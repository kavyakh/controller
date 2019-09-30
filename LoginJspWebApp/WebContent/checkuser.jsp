<%

    String username = request.getParameter("username");
    String password = request.getParameter("passwd");
    
    //business logic
    if(username!=null && password!=null && username.equals("kavya") && password.equals("hello")){
    pageContext.forward("welcome.jsp");
    }
    else
    {
     out.println("Sorry! Invalid Username/password");
     pageContext.include("login.jsp");
    }  
     %>     