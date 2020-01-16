package com.cognizant.truyum.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cogizant.truyum.dao.CartDao;
import com.cogizant.truyum.dao.CartDaoCollectionImpl;
import com.cogizant.truyum.dao.MenuItemDao;
import com.cogizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.model.MenuItem;

@WebServlet("/AddToCart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long menuItemId=Long.parseLong(request.getParameter("menuItemId"));
		long userId=1L;
		CartDao CartDao=new CartDaoCollectionImpl();
		CartDao.addCartItem(userId, menuItemId);
		MenuItemDao menuItemDao=new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList=menuItemDao.getMenuItemListCustomer();
		request.setAttribute("addCartStatus", true);
		request.setAttribute("menuItem", menuItemList);
	    request.getRequestDispatcher("menu-item-list-customer.jsp").forward(request, response);
	}

}
