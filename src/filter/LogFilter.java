package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class LogFilter implements Filter {
    PrintWriter printWriter;
    String filename = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Web Market 초기화.....");
        filename = filterConfig.getInitParameter("filename");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        Long startTime = System.currentTimeMillis();
        Long endTime = System.currentTimeMillis();

//        printWriter = new PrintWriter(new FileWriter(filename,true), true);
//        printWriter.println("접속한 클라이언트 IP : " +  request.getRemoteAddr());
//        printWriter.println("접근한 URL 경로 : " + httpRequest.getRequestURL());
//        printWriter.println("접근한 URI 경로 : " + httpRequest.getRequestURI());
//        printWriter.println("요청 처리 시작 시각 : " + startTime);
//        printWriter.println("요청 처리 종료 시각 : " + endTime);
//        printWriter.println("요청 처리 소요 시각 : " + (endTime - startTime) + " ms");
//        printWriter.println("=========================================================");

        System.out.println("접속한 클라이언트 IP : " +  request.getRemoteAddr());
        System.out.println("접근한 URL 경로 : " + httpRequest.getRequestURL());
        System.out.println("접근한 URI 경로 : " + httpRequest.getRequestURI());
        System.out.println("요청 처리 시작 시각 : " + startTime);
        System.out.println("요청 처리 종료 시각 : " + endTime);
        System.out.println("요청 처리 소요 시각 : " + (endTime - startTime) + " ms");
        System.out.println("=========================================================");

        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}