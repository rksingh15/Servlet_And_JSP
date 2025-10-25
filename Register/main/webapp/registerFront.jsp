<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<!-- external css link -->
<link rel="stylesheet" href="style/styles.css">
</head>
<body>

<div class="form-container">
    <form action="regForm" method="post">
        <h2>Create Account</h2>

        <div class="input-group">
            <label for="name1">Full Name</label>
            <input type="text" name="name1" id="name1" placeholder="Enter your name" required autocomplete="name">
        </div>

        <div class="input-group">
            <label for="email1">Email</label>
            <input type="email" name="email1" id="email1" placeholder="Enter your email" required autocomplete="email">
        </div>

        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Enter your password" pattern=".{6,}" title="6 characters minimum" required>
        </div>

        <div class="input-group">
            <label>Gender</label>
            <div class="gender-options">
                <label><input type="radio" name="gender1" value="Male" required> Male</label>
                <label><input type="radio" name="gender1" value="Female"> Female</label>
            </div>
        </div>

        <div class="input-group">
            <label for="city">City</label>
            <select name="city" id="city" required>
                <option value="">Select city</option>
                <option>Andhra Pradesh - Amaravati</option>
                <option>Arunachal Pradesh - Itanagar</option>
                <option>Assam - Dispur</option>
                <option>Bihar - Patna</option>
                <option>Chhattisgarh - Raipur</option>
                <option>Goa - Panaji</option>
                <option>Gujarat - Gandhinagar</option>
                <option>Haryana - Chandigarh</option>
                <option>Himachal Pradesh - Shimla</option>
                <option>Jharkhand - Ranchi</option>
                <option>Karnataka - Bengaluru</option>
                <option>Kerala - Thiruvananthapuram</option>
                <option>Madhya Pradesh - Bhopal</option>
                <option>Maharashtra - Mumbai</option>
                <option>Manipur - Imphal</option>
                <option>Meghalaya - Shillong</option>
                <option>Mizoram - Aizawl</option>
                <option>Nagaland - Kohima</option>
                <option>Odisha - Bhubaneswar</option>
                <option>Punjab - Chandigarh</option>
                <option>Rajasthan - Jaipur</option>
                <option>Sikkim - Gangtok</option>
                <option>Tamil Nadu - Chennai</option>
                <option>Telangana - Hyderabad</option>
                <option>Tripura - Agartala</option>
                <option>Uttar Pradesh - Lucknow</option>
                <option>Uttarakhand - Dehradun</option>
                <option>West Bengal - Kolkata</option>
            </select>
        </div>

        <input type="submit" value="Register">
    </form>
    
  <div class="message">
    <%= session.getAttribute("message") != null ? session.getAttribute("message") : "" %>
    

<%
    
    session.removeAttribute("message");
%>
</div>

    
</div>

</body>
</html>
