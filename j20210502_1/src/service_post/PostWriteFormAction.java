<<<<<<< HEAD
package service_post;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDao;
import service_member.CommandProcess;

public class PostWriteFormAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("WriteFormAction Start...");
		try {
			PostDao pd = PostDao.getInstance();
			int board_num = Integer.parseInt(request.getParameter("board_num"));
			String pageNum = request.getParameter("pageNum");
			int post_num = pd.getPostNum(board_num);
			
			System.out.println("WriteFormAction board_num" + board_num);
			System.out.println("WriteFormAction pageNum" + pageNum);
			System.out.println("WriteFormAction post_num" + post_num);
			
			request.setAttribute("board_num",board_num);
			request.setAttribute("post_num", post_num);
			request.setAttribute("pageNum", pageNum);
		} 
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "post/postWriteForm.jsp";
	}

}
=======
package service_post;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service_member.CommandProcess;

public class PostWriteFormAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("-----------------------------------------------");
		System.out.println("PostWriteFormAction Start...");
		try { 
			int board_num = Integer.parseInt(request.getParameter("board_num"));
			int post_num = 0, post_re = 0, post_restep = 0, post_lv = 0;
			String pageNum = request.getParameter("pageNum");
			
			System.out.println("PostContentAction board_num->"+board_num);
			
			if (pageNum == null) {
				pageNum = "1"; 
			}
			
			request.setAttribute("board_num",board_num);
			request.setAttribute("post_num", post_num);
			request.setAttribute("post_re", post_re);
			request.setAttribute("post_restep", post_restep);
			request.setAttribute("post_lv", post_lv);
			request.setAttribute("pageNum", pageNum);
			
			System.out.println("PostWriteFormAction board_num ->" +board_num);
			System.out.println("PostWriteFormAction post_num->"+post_num);
			System.out.println("PostWriteFormAction post_re ->" +post_re);
			System.out.println("PostWriteFormAction post_restep ->" + post_restep);
			System.out.println("PostWriteFormAction post_post_lv ->" + post_lv);
			System.out.println("PostWriteFormAction pageNum ->" +pageNum);
		} 
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "/post/postWriteForm.jsp";
	}

}
>>>>>>> 01_team