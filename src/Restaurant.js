import React, { useState } from "react";
import RestaurantButton from "./Compnents/orders/RestaurantButton";
import Order from "./Compnents/orders/order";
import "./App.css";

const Restaurant = () => {
  return (
    <div className="order-box">
      <h3>Restaurant Orders</h3>
      <ul className="order">
        <Order orderType="Pizzas" />
        <Order orderType="Salad" />
        <Order orderType="Chocolate cakes" />
      </ul>
    </div>
  );
};

export default Restaurant;
