
# ⚡️ Electro-API Express

Electro-API is a powerful and lightweight API built with Express.js. It provides an efficient backend service for managing and interacting with various electronic devices and services.

## 🚀 Features

- **Fast & Lightweight**: Built on top of Express.js for speed and performance.
- **RESTful API**: Simple and intuitive RESTful endpoints.
- **Scalable Architecture**: Designed to scale with your needs.
- **Secure**: Implements security best practices.
- **Easy to Deploy**: Ready for deployment on various platforms.

---

## 📦 Installation

To set up Electro-API on your local machine:

```bash
git clone https://github.com/MinProGamer/Electro-API-Express.git
```

---

## 📚 API Documentation













### 1. **Sign-Up**

- **URL**: `https://electro.com/sgin-in`
- **Method**: `POST`
- **Description**: Create a new account.
- **Request Body**:

```json
{
    "user": "Example",
    "email": "Example@gmail.com",
    "pass": "MD5"
}
```

- **Response**:

` 201 ` : Account created Succsusfly

` 400 ` : Missing data like User or Email or Password

` 409 ` : Account Allredy Exsist

` 500 ` : Server Error

---











### 2. **Log-In**

- **URL**: `https://electro.com/log-in`
- **Method**: `POST`
- **Description**: Log in to your account and retrieve a token.
- **Request Body**:

```json
{
    "email": "Example@gmail.com",
    "pass": "MD5"
}
```

- **Response**: 

` 200 ` :

```json
{
    "token": "exsampleJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
}
```

` 401 ` : Invalid user


` 500 ` : Server Error























---

### 3. **User Info**

- **URL**: `https://electro.com/info`
- **Method**: `POST`
- **Description**: Retrieve information about the user, including username and email.
- **Request Body**:

```json
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMsImVtYWlsIjoiWmFrYXJpYUBnbWFpbC5jb20iLCJwYXNzIjoiTUQ1IiwiaWF0IjoxNzI0NzY4MjQ4fQ.CP16kYvC-zVIlFOr9q0vRbsy1HQhdd-64m3I4niHF6s"
}
```

- **Response**:


` 200 ` :
```json
{
    "info": {
        "id": 24,
        "user": "Example",
        "email": "Example@gmail.com",
        "role": "user"
    },
    "cart": null
}
```


` 400 ` : Missing Token

` 401 ` : Invalid user

` 500 ` : Server Error





















---

### 4. ** Get All Products **

- **URL**: `https://electro.com/products`
- **Method**: `GET`
- **Description**: Get all products from data base.
- **Response**:

`200 ` :

```json
{
    "products": [
        {
            "id": 1,
            "name": "TCL Google TV",
            "description": "4K UHD Smart TV with Google TV, black color",
            "stock": 13,
            "price": 600,
            "category": "TV",
            "company": "TCL",
            "stars": 5,
            "img": "TV_9.png"
        },
        {
            "id": 2,
            "name": "Toshiba UHD 4K",
            "description": "4K UHD Smart TV with HDR, black color",
            "stock": 9,
            "price": 450,
            "category": "TV",
            "company": "Toshiba",
            "stars": 5,
            "img": "TV_11.png"
        },
        {
            "id": 3,
            "name": "Philips Ambilight",
            "description": "4K UHD Smart TV with Ambilight, black color",
            "stock": 8,
            "price": 800,
            "category": "TV",
            "company": "Philips",
            "stars": 5,
            "img": "TV_12.png"
        },
    ]
}
```

` 404 ` : Products not found

` 500 ` : Server Error













---

### 5. ** Images **

- **URL**: `https://electro.com/image/tv-4.png`
- **Method**: `GET`
- **Description**: Retrieve a product image by its name.

- **Response**:

` 200 ` :

![TV Image](images/TV_12.png)

` 404 ` : Image not found






















---

### 6. **Cart**

- **URL**: `https://electro.com/cart`
- **Method**: `POST`
- **Description**: Submit a list of products to the cart of user.
- **Request Body**:

```json
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMsImVtYWlsIjoiWmFrYXJpYUBnbWFpbC5jb20iLCJwYXNzIjoiTUQ1IiwiaWF0IjoxNzI0NzY4MjQ4fQ.CP16kYvC-zVIlFOr9q0vRbsy1HQhdd-64m3I4niHF6s",
    "cart": {
        "0": 10,
        "1": 5,
        "4": 2
    }
}
```

- **Response**:

` 200 ` : The New Cart is Saved

` 400 ` : Missing Token

` 401 ` : invalid user

` 500 ` : Server Error

---

This document covers the primary endpoints of the Electro-API. Each section provides a URL, method, description, request body (if applicable), and expected response for each API operation. If you need more detailed descriptions or additional endpoints, feel free to ask!