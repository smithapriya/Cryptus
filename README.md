# README

## Project Information

**Title:** Cryptus

**Team Member:** Shein Lin Phyo, Avneesh Mehta, Smitha Priya, Emma Jiayue Tao

**Demo Link:** link goes here

**Idea:** Application where cryptocurrency owners (users) can find and post cryptocurrency deals at their desired price and amount. Users can use this platform to find and contact sellers and buyers as well as check the current market value of Bitcoin and Ethereum.

---

## Models and Descriptions

1. Cryptocurrency
    * Gathers info about Bitcoin and Ethereum using CoinMarketCap API
    * Uses [Faraday](https://github.com/lostisland/faraday) to retrieve API data from [CoinMarketCap](https://coinmarketcap.com/api)
    *
2. User
    * has email, password, and posts
    * can create or delete posts
    * can accept sale (express interest in another post)
3. Post
    * belongs to a user
    * can be deleted by a user

---

## Features

1. Users can sign up/login
2. Users can see market information for Bitcoin and Ethereum.
3. Users can create a sale post.
4. Users can indicate interest in another sale post
5. Users can view/edit their profile.

---

## Division of Labor

* **Shein Lin Phyo:** User MVC, Writeup
* **Avneesh Mehta:** Crypto MVC, Bootstrap, Presentation
* **Smitha Priya:** Post MVC
* **Emma Jiayue Tao:** User MVC, Crypto View, Post MVC
