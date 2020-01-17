<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu-Item-List-Admin</title>
<link rel="Shortcut icon" href="images/truyum-logo-dark.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header> <img src="images\truyum-logo-light.png" />
    <p class="truYum">truYum</p>
    <nav> <a class="menu" href="">Menu</a></nav> </header>
    <p class="menu-items-for-admin-list">Menu Items</p>
    <table class="for-Tables" style="width: 50%" cellspacing="4">
        <tr>
            <th align="left"><b>Name</b></th>
            <th class="center"><b>Price</b></th>
            <th class="center"><b>Active</b></th>
            <th class="center"><b>Date of Launch</b></th>
            <th class="center"><b>Category</b></th>
            <th align="left"><b>Free Delivery</b></th>
            <th class="center"><b>Action</b></th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">

            <tr>
                <td class="headers-row">${menuItem.getName()}</td>
                <td class="second-row">${menuItem.getPrice()}</td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                </td>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy" /></td>
                <td>${menuItem.getCategory()}</td>



                <td><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
            </tr>



        </c:forEach>
        <tr>
    </table>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>