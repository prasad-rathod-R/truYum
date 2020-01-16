<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit-Menu-Item</title>
<script type="text/javascript" src="js/script.js"></script>
<link rel="Shortcut icon" href="images/truYum-logo-dark.png">
<link rel="stylesheet" type="text/css" href="styles/style.css">
</head>
<body>

    <p>Menu Items</p>
    <header>
    <p class="Edit-Menu-items">Edit Menu Item</p>
    <img src="images/truyum-logo-light.png" />
    <p class="truYum">truYum</p>
    <nav> <a class="menu" href="menu-item-list-admin.jsp">Menu</a></nav> </header>
    <form action="edit-menu-item-status.jsp" name="menuItemForm" method="post"
        onsubmit="validateMenuItemForm()">
        <input type="hidden" name=>
        <table class="table-in-edit-menu">
            <tr>
                <td><label for="title">Name</label></td>
            </tr>
            <tr>
                <td colspan=13><input type="text" name="name" size="142" id="name"
                    placeholder="Sandwich"><span id="name"></span></td>
            </tr>
            <tr>
                <td><label for="price">Price(Rs.)</label></td>
                <td><label>Active</label></td>
                <td><label>Date of Launch</label></td>
                <td><label>Category</label></td>
            </tr>
            <tr>
                <td><input type="text" name="price" size="2" id="price" placeholder="97"></td>

                <td><input type="radio" value="Yes" name="active" />Yes <input type="radio"
                    value="No" name="active" checked="checked" />No</td>
                                     
                    <f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input id="date" type="date" name="dateOfLaunch" value="${dateOfLaunch }
                "autofocus size=20 autocomplete="off" placeholder="27/04/2022" spellcheck="false">
                <f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" /></td>  
                                  
                <td><select id="cat" name="category">
                        <option value=""></option>
                        <option>Starters</option>
                        <option>Main Course</option>
                        <option>Dessert</option>
                        <option>Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="freedelivery" value="No" checked="checked" />

                    Free Delivery</td>
            </tr>
            <tr>
                <td class="save-button1"><input type="submit" value="Save" name="sbt" id="sbt"
                    class="submit"></td>
            </tr>
        </table>
    </form>
    <footer>
    <p>Copyright &copy;2019</p>
    </footer>
</body>
</html>
