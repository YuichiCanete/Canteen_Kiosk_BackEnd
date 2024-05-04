from fastapi import Depends, APIRouter, Form
from .db import get_db
from .fn import fetch_data, delete_data, create_data, update_data

viewsRouter = APIRouter(tags=['Views'])

@viewsRouter.get("/order_ready")
async def get_users(db=Depends(get_db)):
    return await fetch_data("order_ready",db=db)

@viewsRouter.get("/order_preparing")
async def get_users(db=Depends(get_db)):
    return await fetch_data("order_preparing",db=db)

@viewsRouter.get("/view_order")
async def get_users(db=Depends(get_db)):
    return await fetch_data("view_order",db=db)

@viewsRouter.get("/view_order/{order_id}")
async def get_user_by_id(order_id: int,db=Depends(get_db)):
    return await fetch_data("view_order", condition="order_id", value=order_id,db=db)

@viewsRouter.get("/get_total/{order_id}")
async def get_user_by_id(order_id: int,db=Depends(get_db)):
    return await fetch_data("get_total", condition="order_id", value=order_id,db=db)

