import React, { useState } from "react";
import RestaurantButton from "./RestaurantButton";
import "bootstrap/dist/css/bootstrap.min.css";

const Order = (prop) => {
  const [orders, setOrders] = useState(0);

  function orderOne() {
    return setOrders(orders + 1);
  }
  return (
    <div className="order">
      <li className="order-list" class="list-group-item list-group-item-action">
        {prop.orderType}: {orders}
        <RestaurantButton orderOne={orderOne} />
      </li>
    </div>
  );
};

export default Order;
