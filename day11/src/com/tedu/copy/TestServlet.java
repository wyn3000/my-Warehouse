package com.tedu.copy;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//1.声明一个数组（或集合）并将数组存入request域中
		Integer[] names={1,2,3,4};
		request.setAttribute("ns", names);
		
		//声明一个list集合，将集合存入request域中
		List list = new ArrayList(); 
		list.add("无敌浩克");
		list.add("雷神");
		list.add("钢铁侠");
		list.add("美队");
		request.setAttribute("list", list);
		
		//2.声明一个Map集合，将map集合存入request域中
		//通过转发将request对象及其中的数据带到JSP进行显示
		Map map = new HashMap();
		map.put("西游记","孙悟空");
		map.put("漫威","浩克");
		map.put("三国","吕布");
		request.setAttribute("map1", map);
		
		//3.声明一个Use对象.将user对象存入request域中
		User u1 = new User();
		u1.setName("浩克");
		u1.setAddr("漫威");
		u1.setAge(44);
		request.setAttribute("user", u1);
		
		request.getRequestDispatcher("04-JSEL.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

