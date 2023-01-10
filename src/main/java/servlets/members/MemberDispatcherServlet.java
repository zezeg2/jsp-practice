package servlets.members;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/members")
public class MemberDispatcherServlet extends MembersServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String menu = req.getParameter("menu");
        if (menu.equals("memberList")) {
            int page = req.getParameter("page") == null ? 1 : Integer.parseInt(req.getParameter("page"));
            req.setAttribute("page", Integer.valueOf(page));
            req.getRequestDispatcher("/member/views/member-list.jsp").forward(req, resp);
        } else if (menu.equals("member")) {
            req.getRequestDispatcher("/member/views/info.jsp").forward(req, resp);
        } else if (menu.equals("insertForm")) {
            req.getRequestDispatcher("/member/forms/create.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/errors/404.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String menu = req.getParameter("menu");
        if (menu.equals("insertProcess")) {
            req.getRequestDispatcher("/members/insert").forward(req, resp);
        }
    }
}
