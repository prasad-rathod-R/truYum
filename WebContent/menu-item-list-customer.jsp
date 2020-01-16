<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu-Item-list-Customer</title>
<link rel="Shortcut icon" href="images/truYum-logo-dark.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header>
        <img src="images\truyum-logo-light.png" />
        <p class="truYum" >truYum</p>
        <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a> <a class="cart"
            href="ShowCart">Cart</a></nav> 
    </header>
    <p class="for-menu-item-list-customer">Menu Items</p>

    <p>Menu Items</p>
    <c:if test="${addCartStatus==true}">
    <h5 style="color: green">Item Added into Cart Successfully</h5>
    </c:if>
    
    <table class="items-menu-list-for-customer" cellspacing="4">
        <tr>
            <td><b>Name</b></td>
            <td class="center"><b>Free Delivery</b></td>
            <td class="center"><b>Price</b></td>
            <td class="center"><b>Category</b></td>
            <td class="center"><b>Action</b></td>
        </tr>
        <c:forEach items="${menuitem}" var="menuItem">
       
        <tr>
        <td class="headers-row">${menuItem.getName()}</td>
        <td class="second-row">${menuItem.getPrice()}</td>  
         <td> <c:choose>
         <c:when test="${menuItem.isActive()==true}">Yes</c:when>
         <c:otherwise>No</c:otherwise>
         </c:choose></td>
         </td>    
        <td>${menuItem.isActive()}</td>
<td>${menuItem.getPrice()}</td>
        <td>${menuItem.getCategory()}</td>
        <td><a href="AddToCart?menuItemId=${menuItem.getId()}">Add to Cart</a></td>
        </tr>
        </c:forEach>
    </table>
    <footer>
        <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>
