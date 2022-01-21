<%@page import="beans.Salle"%>
<%@page import="service.SalleService"%>

                <main>
                    <div class="container-fluid px-4"> 
<!--                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>-->
<div>
     <fieldset>
               <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Information Machine
                            </div>
               <div id="formulaire">
                   <div class="form-group row" hidden="">
    <label for="inputEmail3" class="col-sm-2 col-form-label" value="ahmama">id</label>
    <div class="col-sm-3">
      <input id="id" class="form-control"  type="text" name="reference" value=""  required=""/>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Référence</label>
    <div class="col-sm-3">
      <input id="reference" class="form-control"  type="text" name="reference" value=""  required=""/>
    </div>
  
    <label for="inputPassword3" class="col-sm-2 col-form-label">Date Achat</label>
    <div class="col-sm-4">
      <input id="dateAchat" type="date" class="form-control" name="dateAchat" value="" required="" />
    </div>
  </div>
                   <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">marque</label>
    <div class="col-sm-3">
      <input id="marque" type="text" class="form-control"  name="marque" value="" required="" />
    </div>
    
      
    
         

     <label for="inputPassword3" class="col-sm-2 col-form-label" >Salle</label>
      <div class="col-sm-4">
        <select class="form-control" id="inlineFormCustomSelectPref">
    <option selected value="0">Choose...</option>
    <%
        SalleService ss=new SalleService();
        for(Salle salle:ss.findAll()){
            
        %>
        <option id="salle" value="<%= salle.getId() %>"><%= salle.getId() %></option>
   <% }
    %>
    </select>
        </div>
    </div>
  
      <div class="col-sm-10" style=" margin-top: 20px;padding-left: 500px;position: relative;top: -5px;">
       <input id="add" type="submit" value="Ajouter"  class="btn btn-primary"/>
       <input disabled id="update" type="submit" value="Modifier"  class="btn btn-primary"/>
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
                                  
                                    <tbody id="content">
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
