<%@page import="beans.Salle"%>
<%@page import="service.SalleService"%>
<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4"> 
<div>
     <fieldset>
               <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Information Machine
                            </div>
               <div id="formulaire">
                   <div class="form-group row">
                       <label for="inputPassword3" class="col-sm-3 col-form-label" >Date Debut</label>
    <div class="col-sm-4">
        <input id="dateDebut" style="position: relative;left: -50px;" type="date" class="form-control"  name="marque" value="" required=""  />
    </div>   
    <label for="inputPassword3" class="col-sm-2 col-form-label" style="position: relative;left: -50px;">Date FIN</label>
    <div class="col-sm-3">
      <input id="dateFin" type="date" class="form-control" style="position: relative;left: -60px;" name="marque" value="" required="" />
    </div>   
     </div>
                   
      <div class="col-sm-10" style=" margin-top: 20px;padding-left:250px;position: relative;top: -5px;">
       <input id="search" type="submit" value="search"  class="btn btn-primary"/>
    </div>
  
</div>
            </fieldset>
</div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Machine Table
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                             <th>Id</th>
                                            <th>R�f�rence <br>
                                            <th>Date Achat</th>
                                             <th>marque</th>
                                             <th>salle</th>
                                        </tr>
                                    </thead><!--
-->                                    <tfoot>
                                        <tr>
                                             <th>Id</th>
                                            <th>R�f�rence <br>
                                            <th>Date Achat</th>
                                             <th>marque</th>
                                             <th>salle</th>
                                        </tr>
                                    </tfoot><!--
-->                                     
                                    <tbody id="content">
                                        <tr></tr>
                                      </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        