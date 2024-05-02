## Cloning

```
  git clone https://github.com/YuichiCanete/Canteen_Kiosk_BackEnd.git
```

## Back End (using miniconda)

Create new db named canteen_kiosk then
Import the canteen_kiosk.sql to phpmyadmin

### Setup
```
  cd Canteen_Kiosk_BackEnd
  conda create --name canteen_kiosk python=3.9
  conda activate canteen_kiosk
  pip install fastapi uvicorn mysql-connector-python python-multipart cryptography bcrypt
```

### To Run
```
  cd Canteen_Kiosk_BackEnd
  conda activate canteen_kiosk
  uvicorn main:app --reload
```
