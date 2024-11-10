package sidep;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // 로그아웃 요청 처리
        if (request.getParameter("logout") != null) {
            HttpSession session = request.getSession();
            session.invalidate(); // 세션 초기화

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('로그아웃 하였습니다.'); location.href='main.jsp';</script>");
            return;
        }

        ServletContext application = getServletContext();
        
        String sname = request.getParameter("sname");
        String sid = request.getParameter("sid");
        String spw = request.getParameter("spw");

        // 회원가입 처리
        if (sname != null && sid != null && spw != null) {
            application.setAttribute("aname", sname);
            application.setAttribute("aid", sid);
            application.setAttribute("apw", spw);

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('회원가입 완료'); location.href='login.html';</script>");
            return;
        }

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        String aid = (String) application.getAttribute("aid");
        String apw = (String) application.getAttribute("apw");
        String aname = (String) application.getAttribute("aname");

        if (id != null && pw != null && id.equals(aid) && pw.equals(apw)) {
            HttpSession session = request.getSession();
            session.setAttribute("aname", aname);

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('로그인 성공'); location.href='main.jsp';</script>");
        } else {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('로그인 정보가 일치하지 않습니다.'); location.href='main.jsp';</script>");
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
