package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div style=\"width: 100%; height: 100%; position: relative; background: white; backdrop-filter: blur(4px)\">\r\n");
      out.write("            <div style=\"width: 1538px; height: 1024px; left: -2px; top: 0px; position: absolute\">\r\n");
      out.write("                <img style=\"width: 1536px; height: 1024px; left: 2px; top: 0px; position: absolute\" src=\"https://via.placeholder.com/1536x1024\" />\r\n");
      out.write("                <div style=\"width: 1442px; height: 1024px; left: 0px; top: 0px; position: absolute; background: rgba(0, 0, 0, 0.20); border-radius: 4px; backdrop-filter: blur(50px)\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"width: 532px; height: 596px; left: 454px; top: 214px; position: absolute; background: white; border-radius: 6px\"></div>\r\n");
      out.write("            <div style=\"left: 556px; top: 392px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex\">\r\n");
      out.write("                <div style=\"color: rgba(18, 18, 18, 0.87); font-size: 14px; font-family: Poppins; font-weight: 500; letter-spacing: 0.40px; word-wrap: break-word\">Email:</div>\r\n");
      out.write("                <div style=\"width: 328px; height: 48px; padding-top: 8px; padding-bottom: 8px; padding-left: 16px; padding-right: 8px; background: white; border-radius: 8px; overflow: hidden; border: 1px #022B3A solid; justify-content: flex-start; align-items: center; gap: 8px; display: inline-flex\">\r\n");
      out.write("                    <div style=\"width: 20px; height: 20px; position: relative\">\r\n");
      out.write("                        <div style=\"width: 17.92px; height: 14.58px; left: 1.04px; top: 2.71px; position: absolute; background: rgba(18, 18, 18, 0.60)\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div style=\"color: rgba(18, 18, 18, 0.38); font-size: 14px; font-family: Poppins; font-weight: 400; letter-spacing: 0.40px; word-wrap: break-word\">Please enter your email</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"left: 557px; top: 486px; position: absolute; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 8px; display: inline-flex\">\r\n");
      out.write("                <div style=\"color: rgba(18, 18, 18, 0.87); font-size: 14px; font-family: Poppins; font-weight: 500; letter-spacing: 0.40px; word-wrap: break-word\">Password:</div>\r\n");
      out.write("                <div style=\"width: 328px; height: 48px; padding-top: 8px; padding-bottom: 8px; padding-left: 16px; padding-right: 8px; background: white; border-radius: 8px; overflow: hidden; border: 1px #022B3A solid; justify-content: flex-start; align-items: center; gap: 8px; display: inline-flex\">\r\n");
      out.write("                    <div style=\"color: rgba(18, 18, 18, 0.38); font-size: 14px; font-family: Poppins; font-weight: 400; letter-spacing: 0.40px; word-wrap: break-word\">Please enter your password</div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"left: 670px; top: 244px; position: absolute; color: #022B3A; font-size: 32px; font-family: Inter; font-weight: 700; word-wrap: break-word\">LOGIN</div>\r\n");
      out.write("            <div style=\"left: 781px; top: 569px; position: absolute; color: #022B3A; font-size: 12px; font-family: Inter; font-weight: 600; word-wrap: break-word\">Forgot password?</div>\r\n");
      out.write("            <div style=\"width: 136px; height: 47px; left: 760px; top: 671px; position: absolute\">\r\n");
      out.write("                <div style=\"width: 136px; height: 47px; left: 0px; top: 0px; position: absolute; background: #06516C; border-radius: 6px\"></div>\r\n");
      out.write("                <div style=\"left: 19px; top: 11px; position: absolute; color: white; font-size: 20px; font-family: Inter; font-weight: 700; word-wrap: break-word\">REGISTER</div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"width: 136px; height: 47px; left: 545px; top: 671px; position: absolute\">\r\n");
      out.write("                <div style=\"width: 136px; height: 47px; left: 0px; top: 0px; position: absolute; background: #022B3A; border-radius: 6px\"></div>\r\n");
      out.write("                <div style=\"left: 37px; top: 11px; position: absolute; color: white; font-size: 20px; font-family: Inter; font-weight: 700; word-wrap: break-word\">LOGIN</div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
