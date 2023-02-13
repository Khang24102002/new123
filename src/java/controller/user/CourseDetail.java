/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dal.DAO;
import dal.PercentageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Chapter;
import model.Course;
import model.Enroll;
import model.Lesson;
import model.Percentage;
import model.User;

/**
 *
 * @author admin
 */
@WebServlet(name = "CourseDetail", urlPatterns = {"/course"})
public class CourseDetail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id_raw = request.getParameter("id");
        DAO d = new DAO();
        PercentageDAO pd = new PercentageDAO();
        int id;
        try {
            id = Integer.parseInt(id_raw);
            Course c = d.getCourseById(id);
            request.setAttribute("course", c);
            List<Lesson> listlesson = d.listLesson1();
            
        HttpSession session = request.getSession();
        if (session.getAttribute("account") != null) {
            User user = (User) session.getAttribute("account");
            List<Percentage> listPercentage = pd.getPercentageByUserID(user.getUser_id());
            request.setAttribute("listPercentage", listPercentage);
        }
            List<Chapter> listChap = d.getChapterByCourseID(id);
            request.setAttribute("listChap", listChap);
            request.setAttribute("listlesson", listlesson);

            request.getRequestDispatcher("/pages/user/public/course-detail.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
