<%@ include file="controller/connect.jsp" %>
<!DOCTYPE HTML>
<!--
  Phantom by HTML5 UP
  html5up.net | @ajlkn
  Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
  <head>
    <title>Info Diskon</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->s
    <link rel="stylesheet" href="assets/css/main.css" />
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body style="background-color: #ffcc00;">
    <!-- Wrapper -->
      <div id="wrapper">

        <!-- Header -->
          <header id="header">
            <div class="inner">

              <!-- Logo -->
                <a href="index.html" class="logo">
                  <span class="symbol"><img src="images/Logo.png" alt="" /></span><span class="title">Info Event</span>
                </a>

              <!-- Nav -->
                <nav>
                  <ul>
                    <li><a href="#menu">Menu</a></li>
                  </ul>
                </nav>

            </div>
          </header>

        <!-- Menu -->
          
          <nav id="menu">
            <h2>Menu</h2>
            <ul>
            <%if(session.getAttribute("role")==null){ 
              //jika session null
              %>
              <li><a href="index.jsp">Home</a></li>
              <li><a href="register.jsp">Register</a></li>
              <li><a href="login.jsp">Login</a></li>

              <% 
              }
              //jika session role = admin
              else if(session.getAttribute("role").equals("admin")){
              %>

                <li><a href="index.jsp">Home</a></li>
              <li><a href="insertEvent.jsp">Insert Event</a></li>
              <li><a href="manageEvent.jsp">Manage Event</a></li>
              <li><a href="controller/doLogout.jsp">Logout</a></li>
            <%
              }
            

            else if(session.getAttribute("role").equals("member")){
              %>
                
                <li><a href="index.jsp">Home</a></li>
              <li><a href="#">Cartegory</a></li>
              <ul>
                <li><a href="workshop.jsp">WorkShop</a></li>
                <li><a href="seminar.jsp">Seminar</a></li>
                <li><a href="other.jsp">Other</a></li>
              </ul>
              <li><a href="calender.jsp">Calender</a></li>
              <li><a href="register.jsp">Review Event</a></li>
              <li><a href="controller/doLogout.jsp">Logout</a></li>
            <%
              }
            %>
            </ul>
          </nav>
        <!-- Main -->
          
              <div class="container" style="margin: -10px;">
              <h1 class="year">&mdash; 2017 &mdash;</h1>
              <h2 class="description">Twelve month calendar of holidays *</h2>
              <ul>
              <li>
          <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>January</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td class="is-holiday">
            <div class="day">1</div>
            <div class="holiday">New Year</div>
            </td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
          </tr>
          <tr>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
          </tr>
          <tr>
            <td><div class="day">15</div></td>
            <td class="is-holiday">
              <div class="day">16</div>
              <div class="holiday">MLK Day</div>
            </td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
          </tr>
          <tr>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
          </tr>
          <tr>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>February</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
          </tr>
          <tr>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td>
              <div class="day">11</div>
              
            </td>
          </tr>
          <tr>
            <td><div class="day">12</div></td>
            <td>
              <div class="day">13</div>
              <
            </td>
              <td class="is-holiday">
              <div class="day">14</div>
              <div class="holiday">Valentine's Day</div>
            </td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
          </tr>
          <tr>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
          </tr>
          <tr>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>March</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
          </tr>
          <tr>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
          </tr>
          <tr>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
          </tr>
          <tr>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
          <tr>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>April</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
          </tr>
          <tr>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
          </tr>
          <tr>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
          </tr>
          <tr>
            <td><div class="day">16</div></td>
            <td>
              <div class="day">17</div>
             
            </td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
          </tr>
          <tr>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
          </tr>
          <tr>
            <td><div class="day">30</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>May</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
          </tr>
          <tr>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
          </tr>
          <tr>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
          </tr>
          <tr>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
          <tr>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>June</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
          </tr>
          <tr>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
          </tr>
          <tr>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
          </tr>
          <tr>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
          <tr>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>July</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
        
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
          </tr>
          <tr>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
          </tr>
          <tr>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
          </tr>
          <tr>
            <td><div class="day">16</div></td>
            <td>
              <div class="day">17</div>
              
            </td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
          </tr>
          <tr>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
          </tr>
          <tr>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>August</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
         <tr>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
          </tr>
          <tr>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
          </tr>
          <tr>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
          </tr>
          <tr>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
          <tr>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>September</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
          </tr>
          <tr>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
          </tr>
          <tr>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
          </tr>
          <tr>
            <td><div class="day">17</div></td>
            <td>
              <div class="day">18</div>
            
            </td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
          </tr>
          <tr>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>October</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
           <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>
            <div class="day">1</div>
            
            </td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
          </tr>
          <tr>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
          </tr>
          <tr>
            <td><div class="day">15</div></td>
            <td>
              <div class="day">16</div>
             
            </td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
          </tr>
          <tr>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
          </tr>
          <tr>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>November</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
           <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
          </tr>
          <tr>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
          </tr>
          <tr>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
          </tr>
          <tr>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
          <tr>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td><div class="day">30</div></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
    <li>
      <article tabindex="0">
        <div class="outline"></div>
        <div class="dismiss"></div>
        <div class="binding"></div>
        <h1>December</h1>
        <table>
          <thead>
            <tr>
              <th>Sun</th>
              <th>Mon</th>
              <th>Tue</th>
              <th>Wed</th>
              <th>Thu</th>
              <th>Fri</th>
              <th>Sat</th>
            </tr>
          </thead>
           <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><div class="day">1</div></td>
            <td><div class="day">2</div></td>
          </tr>
          <tr>
            <td><div class="day">3</div></td>
            <td><div class="day">4</div></td>
            <td><div class="day">5</div></td>
            <td><div class="day">6</div></td>
            <td><div class="day">7</div></td>
            <td><div class="day">8</div></td>
            <td><div class="day">9</div></td>
          </tr>
          <tr>
            <td><div class="day">10</div></td>
            <td><div class="day">11</div></td>
            <td><div class="day">12</div></td>
            <td><div class="day">13</div></td>
            <td><div class="day">14</div></td>
            <td><div class="day">15</div></td>
            <td><div class="day">16</div></td>
          </tr>
          <tr>
            <td><div class="day">17</div></td>
            <td><div class="day">18</div></td>
            <td><div class="day">19</div></td>
            <td><div class="day">20</div></td>
            <td><div class="day">21</div></td>
            <td><div class="day">22</div></td>
            <td><div class="day">23</div></td>
          <tr>
            <td><div class="day">24</div></td>
            <td><div class="day">25</div></td>
            <td><div class="day">26</div></td>
            <td><div class="day">27</div></td>
            <td><div class="day">28</div></td>
            <td><div class="day">29</div></td>
            <td></td>
          </tr>
          <tr>
            <td><div class="day">30</div></td>
            <td><div class="day">31</div></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </table>
      </article>
    </li>
  </ul>
</div>
          

     

      

    <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
      <script src="assets/js/main.js"></script>
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>


  </body>
</html>