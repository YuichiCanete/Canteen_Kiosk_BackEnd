from fastapi import Depends, HTTPException, APIRouter, Form
from datetime import date
from typing import Dict
from .db import get_db
from .fn import fetch_data, delete_data, create_data, update_data

userOrderRouter = APIRouter(tags=['User Order'])

@userOrderRouter.get("/user_order")
async def get_users(db=Depends(get_db)):
    return await fetch_data("user_order",db=db)

@userOrderRouter.get("/user_order/{user_order_id}")
async def get_user_by_id(user_order_id: int,db=Depends(get_db)):
    return await fetch_data("user_order", condition="user_order_id", value=user_order_id,db=db)

@userOrderRouter.post("/user_order/", response_model=Dict)
async def create_user(
    payment_type: str = Form(...),
    order_date: date = Form(...),
    user_id: int = Form(...),
    order_status: str = Form(...),
    db=Depends(get_db)
):
    try:
        data = {
            "payment_type": payment_type,
            "order_date": order_date,
            "user_id": user_id,
            "order_status": order_status
        }

        cursor, conn = db  # Unpack cursor and connection from the db tuple
        
        columns = ', '.join(data.keys())
        placeholders = ', '.join(['%s'] * len(data))
        query = f"INSERT INTO user_order ({columns}) VALUES ({placeholders})"
        
        # Use the connection object to create the cursor
        cursor.execute(query, tuple(data.values()))
        
        conn.commit()  # Commit changes using the connection object
        
        # Retrieve the last inserted ID using LAST_INSERT_ID() function
        cursor.execute("SELECT LAST_INSERT_ID()")
        user_order_id = cursor.fetchone()[0]
        
        cursor.close()
        
        data["user_order_id"] = user_order_id
        
        return data
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error creating data: {str(e)}")

@userOrderRouter.delete("/user_order/{user_order}", response_model=dict)
async def delete_user(user_order_id: int, db=Depends(get_db)):
    return await delete_data("user_order", "user_order_id", user_order_id, db=db)

@userOrderRouter.put("/user_order/{user_order_id}", response_model=dict)
async def update_food_detail(
    user_order_id: int,
    payment_type: str = Form(...),
    order_date: date = Form(...),
    user_id: int = Form(...),
    order_status: str = Form(...),
    db=Depends(get_db)
):
    data = {
        "payment_type": payment_type,
        "order_date": order_date,
        "user_id": user_id,
        "order_status": order_status
    }
    return await update_data("user_order", "user_order_id", user_order_id, data, db=db)

