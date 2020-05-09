package filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginCheckFilter implements Filter {
    String id = "";
    String pw = "";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("로그인 체크 필터 가동");
        id = filterConfig.getInitParameter("id");
        pw = filterConfig.getInitParameter("password");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        String paramId = request.getParameter("id");
        String paramPw = request.getParameter("password");

        PrintWriter printWriter = response.getWriter();
        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("utf-8");

        if (id.equals(paramId) && pw.equals(paramPw)) {
            printWriter.println("로그인 성공!");
        }

        if (!(id.equals(paramId) || pw.equals(paramPw))) {
            printWriter.println("로그인 실패!");
        }

        request.setAttribute("UserID", paramId);
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
