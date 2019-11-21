package com.tedu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *	request作为对象使用
 *	案例:模拟查询门店列表功能
 */
public class DoorListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//1.模拟Jdbc访问数据查询所有门店信息
		List<String> doorList = new ArrayList();
		doorList.add("1,天，0859-110");
		doorList.add("2,地，0589-119");
		doorList.add("3,人，0589-120");
		doorList.add("4,和，0589-100");
		doorList.add("5,物，0589-116");
		
		//2.将门店信息集合放入request域中(map集合)
		request.setAttribute("list", doorList);
		
		//3.通过转发将请求以及域对象中的数据转向jsp
		request.getRequestDispatcher("doorList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}