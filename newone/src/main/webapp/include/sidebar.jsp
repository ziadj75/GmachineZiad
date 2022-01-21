 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">ZIAD</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                 <a class="nav-link" onclick="goTo()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Recherche Par date</span></a>
                    <script type="text/javascript">
                        function goTo(){
                            window.location="<%= request.getContextPath()%>/RechercheMultiCritere.jsp";
                        }
                    </script>
            </li>
            
             <li class="nav-item active">
                 <a class="nav-link" onclick="goToSalle()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Recherche Par Salle</span></a>
                    <script type="text/javascript">
                        function goToSalle(){
                            window.location="<%= request.getContextPath()%>/RechercheSalle.jsp";
                        }
                    </script>
            </li>
            
            <li class="nav-item active">
                 <a class="nav-link" onclick="goTo2()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Salle</span></a>
                    <script type="text/javascript">
                        function goTo2(){
                            window.location="<%= request.getContextPath()%>/salle.jsp";
                        }
                    </script>
            </li>
            <li class="nav-item active">
                 <a class="nav-link" onclick="goTo3()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Machine</span></a>
                    <script type="text/javascript">
                        function goTo3(){
                            window.location="<%= request.getContextPath()%>/machines.jsp";
                        }
                    </script>
            </li>
            <li class="nav-item active">
                 <a class="nav-link" onclick="goTo4()">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charte</span></a>
                    <script type="text/javascript">
                        function goTo4(){
                            window.location="<%= request.getContextPath()%>/Statistique.jsp";
                        }
                    </script>
            </li>
            

        </ul>