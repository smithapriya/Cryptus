# README

## Project Information

**Title:** Cryptus

**Team Member:** Shein Lin Phyo, Avneesh Mehta, Smitha Priya, Emma Jiayue Tao

**Demo Link:** https://youtu.be/FBguLgvsst8

**Idea:** Application where cryptocurrency owners (users) can find and post Bitcoin or Ethereum sales at their desired price and amount. Users can use this platform to find and contact sellers and buyers as well as check the current market value of Bitcoin and Ethereum.

---

## Models and Descriptions

1. Cryptocurrency
    * has marketcap, price, volume, name
    * Gathers info about Bitcoin and Ethereum using CoinMarketCap API
    * Uses [Faraday](https://github.com/lostisland/faraday) to retrieve API data from [CoinMarketCap](https://coinmarketcap.com/api)
2. User
    * has attributes from devise gem as well as name and description
    * can create/delete/edit posts
    * has many posts
3. Post
    * has btc (boolean for telling if currency is bitcoin or ethereum), price, quantity, content, user_id foreign key
    * belongs to a user
    * can be deleted/edited by a user

---

## Features

1. Users can sign up/login
2. Users can view/edit their profile.
3. Users can see market information for Bitcoin and Ethereum.
4. Users can create a sale post.
5. Users van view/edit thier own sale posts in their profile
6. Users can view posts of others
7. Users can view info of another user who posted a sale

---

## Division of Labor

* **Shein Lin Phyo:** User MVC, Writeup, Misc.
* **Avneesh Mehta:** Crypto MVC, Bootstrap Styling, Misc.
* **Smitha Priya:** Post MVC (Work committed through Emma's github account), Presentation
* **Emma Jiayue Tao:** User MVC, Crypto View, Post MVC
