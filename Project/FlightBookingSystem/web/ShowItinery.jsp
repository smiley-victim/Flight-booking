<%@page import="models.Features"%>
<%@page import="models.Flight"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Your Itinerary</title>
		
		<link rel="icon" href="images/favicon.ico">

        <!-- CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    </head>
	
	

  <body style="background-color: #f8f9fa;">  


      <jsp:include page="Templates/CustomerHeader.jsp"/>
      
      <div class="container mt-5">
          <div class="row">
              <div class="col-md-12">
                  <div class="card">
                      <div class="card-header bg-primary text-white">
                          <h3 class="mb-0">Your Itinerary</h3>
                      </div>
                      <div class="card-body">
                          <table class="table table-light table-striped table-bordered table-hover mx-auto table-responsive">
                              <thead style="color:rgba(0,0,0,0.7);">
                                  <tr>
                                      <th>#</th>
                                      <th>Flight</th>	
                                      <th>Departure Date</th>
                                      <th>Departure City</th>
                                      <th>Arrival Date</th>
                                      <th>Arrival City</th>
                                      <th>Class</th>	
                                      <th>Total Price</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <th scope="row">1</th>
                                      <% out.print("<td> <input name='flight_name' readonly value='" +  request.getParameter("flight_name") +  "'/></td>"); %>
                                      <td><% out.print(request.getParameter("depart_date")); %></td>
                                      <td><% out.print(request.getParameter("depart_city")); %></td>
                                      <td><% out.print(request.getParameter("arrival_date")); %></td>
                                      <td><% out.print(request.getParameter("arrival_city")); %></td>
                                      <% out.print("<td> <input name='class_name' readonly value='" +  request.getParameter("class_name") +  "'/></td>"); %>
                                      <%
                                          ArrayList<Features> f = (ArrayList<Features>)(application.getAttribute("features"));
                                          int priceE = f.get(0).getPrice();
                                          int priceB = f.get(1).getPrice();
                                          int priceF = f.get(2).getPrice();
                                          
                                          if(request.getParameter("class_name").equals("Economy"))
                                              out.print("<td>"+priceE+"</td>");                                                                        							                                                                                

                                          else if(request.getParameter("class_name").equals("Business"))
                                              out.print("<td>"+priceB+"</td>");                                                                        							                                                                                

                                          else
                                              out.print("<td>"+priceF+"</td>");                                                                        							                                                                                
                                      %>

                                      <td><input type='submit' class='btn btn-primary flex-row-reverse' value ='Select'></td>
                                  </tr>
                              </tbody>
                          </table>
                      </div>
                  </div>
              </div>
          </div>
      </div>

      <jsp:include page="Templates/Footer.jsp"/>

      <!-- Optional JavaScript -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>

</html>