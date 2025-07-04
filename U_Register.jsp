<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Register Page</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.4.2.min.js"></script>
    <script>
        function validateForm() {
            var username = document.s.userid.value.trim();
            var password = document.s.pass.value;
            var email = document.s.email.value.trim();
            var mobile = document.s.mobile.value.trim();
            var dob = document.s.dob.value;
            var address = document.s.address.value.trim();
            var gender = document.s.gender.value;
            var pincode = document.s.pincode.value.trim();
            var pic = document.s.pic.value;

            // Username validation
            if (username === "") {
                alert("Please enter a username");
                return false;
            }

            // Password validation
            var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!]).{8,}$/;
            if (!password.match(passwordPattern)) {
                alert("Password must be at least 8 characters long and include uppercase, lowercase, number, and special character");
                return false;
            }

            // Email validation
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address");
                return false;
            }

            // Mobile validation
            var mobilePattern = /^[0-9]{10}$/;
            if (!mobile.match(mobilePattern)) {
                alert("Please enter a valid 10-digit mobile number");
                return false;
            }

            // Gender selection
            if (gender === "--Select--") {
                alert("Please select your gender");
                return false;
            }

            // Pincode validation (exactly 6 digits)
            var pincodePattern = /^[0-9]{6}$/;
            if (!pincode.match(pincodePattern)) {
                alert("Please enter a valid 6-digit pincode");
                return false;
            }

            // Profile picture validation
            if (pic === "") {
                alert("Please upload a profile picture");
                return false;
            }

            return true;
        }
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            width: 40%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #0099FF;
            color: white;
            font-weight: bold;
            cursor: pointer;
            width: 100%;
            padding: 10px;
        }
        input[type="submit"]:hover {
            background-color: #0077CC;
        }
        label {
            display: block;
            text-align: left;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Register</h2>
        <form name="s" action="U_RegIns.jsp" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
            <label>User Name *</label>
            <input type="text" name="userid" placeholder="Enter your username" required>

            <label>Password *</label>
            <input type="password" name="pass" placeholder="Enter your password" required>

            <label>Email *</label>
            <input type="email" name="email" placeholder="Enter your email" required>

            <label>Mobile Number *</label>
            <input type="text" name="mobile" placeholder="Enter 10-digit mobile number" required>

            <label>Date of Birth *</label>
            <input type="date" name="dob" required>

            <label>Gender *</label>
            <select name="gender">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
            </select>

            <label>Address *</label>
            <textarea name="address" rows="2" placeholder="Enter your address" required></textarea>

            <label>Pincode *</label>
            <input type="text" name="pincode" placeholder="Enter pincode" required>

            <label>Profile Picture *</label>
            <input type="file" name="pic" required>

            <input type="submit" value="REGISTER">
        </form>
    </div>
</body>
</html>
