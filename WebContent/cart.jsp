<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="Shortcut icon" href="images/truYum-logo-dark.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header> <img src="images\truyum-logo-light.png" />
    <p class="truYum">truYum</p>
    <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a> <a class="cart" href="ShowCart">Cart</a></nav> </header>
    <p class="cart-lable">Cart</p>
  <table class="items-menu-list-for-customer" cellspacing="4">
        <tr>
            <th align="left"><b>Name</b></th>
            <th align="center"><b>Free Delivery</b></th>
            <th align="left"><b>Price</b></th>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${ menuItem.getName()}</td>
                <td align="center">
                <c:choose>
                        <c:when test="${menuItem.isFreeDelivery()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td>${ menuItem.getPrice()}</td>
                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>