<!-- start navbar here -->
<h1><img src="images/bullhornlogo50x50.png" alt="Bullhorn Logo"/>&nbsp;Bullhorn!</h1>
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="newsfeed.jsp">Newsfeed</a></li>
<li><a href="ProfileServlet?userid=${user.userId}&action=viewprofile">Profile</a></li>
<li><a href="search.jsp">Search</a></li>
<li><a href="feedback.jsp">Feedback</a></li>

<li><a href="LoginServlet?action=logout">Log out</a></li>
</ul>
<!-- end navbar here -->



<!-- 
    what is the action of the login form?
    
    right-click on LoginServlet and select Run as. You should see the error page. Do you know why?
    
    Now, right-click on the login.jsp and select Run as. You will see the login page.
    
    The title on every page is different. What are some ways you could use to make the title consistent on every page? Think about what would happen if you wanted to change the title on every page. How would you modify your application to allow you to change the title in only one place?
    is the data for the login form sent through the url or embedded in the form object that is sent to the web server?
    
    what is the name of the web server we are using?
    
    when the data is sent from login.jsp to the web server what does the web server do next?
    
    when is the login data (email and password) actually sent to the web server?
    
    what data is sent to the web server?
    
    write down the different methods that are executed (in order) once the user clicks "Login"
    
    when using JSTL (the Java Standard Tag Library) which page directive must you include at the top of the JSP page?
    
    modify this application to add another JSP for adding a new user. Create the JSP, name it adduser.jsp. Add it to the login page. That way if a user finds the login page but hasn't joined the site they would click on the "New User" link and go to the adduser.jsp. When adduser.jsp opens the user will see a form prompting for their username, email, password and motto. Don't worry about making the form work yet. We'll get to that later.
    
    Make the addUser.jsp work. Since we haven't added the database to the site yet you only have to create a servlet to receive the data for addUser.jsp. You should be able to do that by now. Use login.jsp to motivate you.

Modifications

Things you should do now...

Modify feedback.jsp to contain the following form. Then modify this form to make it go to a servlet called Feedback.java. You will need to create the Feedback servlet.

This servlet will receive the feedback from the form and store the values in variables. After we connect the database we will put the values of these variables in the database. So you should modify the doPost method of the FeedbackServlet to receive the data from this form and store it in Java variables.

<form action="" method="post">
  <input type="radio" name="subject" value="Question" checked> Question<br>
  <input type="radio" name="subject" value="Complaint"> Complaint<br>
  <input type="radio" name="subject" value="Comment"> Comment<br><br>
  <textarea name="feedback" rows="6" cols="50"></textarea><br><br>
  <input type="submit" value="Send Feedback">
</form> 

Look at navbar.jsp. You will see several list items in the unordered list. Each is denoted with an <li> tag. Modify each <li> tag to include a style attribute to display inline as follows:

<li style="display: inline;">

Notice how this changes the display of your unordered list when you refresh a page that uses the navbar.

The following code can be found in the ProfileServlet. You can put this code in any servlet that to ensure the user is logged in. Then if they are not they will be redirected to login.jsp. Make that modification now. BUt don't check the LoginServlet! They won't be logged in there!

//make sure a user is in the session. If they don't exist then go back to the login page.
if (session.getAttribute("user")==null){
    //http://stackoverflow.com/questions/13638446/checking-servlet-session-attribute-value-in-jsp-file
    nextURL = "/login.jsp";
    response.sendRedirect(request.getContextPath() + nextURL);
    return;//return prevents an error; Don't believe me? Take it out.
}

Create the Newsfeed servlet. It will be called from the navbar. When the servlet is called it will go to the database and get all the posts as an arraylist. The arraylist will be sent to the newsfeed.jsp using request.setAttribute("posts",posts).

Example Code

ArrayList<Post> posts = new ArrayList<Post>();
//create a class called Post that contains email and text fields.
Post p = new Post();
p.setEmail("lisa@fox.net");
p.setText("This is the text of my post");
posts.add(p); -->