<script type="text/javascript">
                     
                     <%

               HttpSession sessions = request.getSession();
                sessions.invalidate();
                response.sendRedirect(request.getContextPath()+"/login.jsp");
               %>
                   
                </script>