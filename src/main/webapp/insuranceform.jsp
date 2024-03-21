<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<style>
body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container {
    display: flex;
    width: 80%;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    overflow: hidden; /* Ensure the container doesn't overflow */
}

.image-container {
    flex: 1;
    overflow: hidden; /* Ensure the image doesn't overflow */
}

.image {
    width: 100%;
    height: auto;
    border-radius: 8px 0 0 8px;
}

.form-container {
    flex: 1;
    padding: 20px;
}

h2 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
}

table, th, td {
    border: none;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
    font-weight: bold;
}

input[type="text"], input[type="password"], input[type="submit"], input[type="reset"],
    select {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 5px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

input[type="submit"], input[type="reset"] {
    background-color: #4CAF50;
    color: white;
    cursor: pointer;
    border-radius:20px
}

input[type="submit"]:hover, input[type="reset"]:hover {
    background-color: #45a049;
}

a {
    color: #007bff;
    text-decoration: none;
}
</style>
</head>
<body>
    <div class="container">
        <div class="image-container">
            <img src="https://png.pngtree.com/background/20210710/original/pngtree-car-insurance-promotion-poster-background-material-picture-image_1033768.jpg" class="image">
        </div>
        <div class="form-container">
            <h2>Insurance Application Form</h2>
            <form method="post" action="insuranceRegistration.jsp">
                <table>
                    <tr>
                        <td>Name of Applicant</td>
                        <td><input type="text" name="applicantName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Age</td>
                        <td><input type="text" name="age" value="" /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><select name="gender">
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td><input type="text" name="mobile" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>Insurance Type</td>
                        <td><select name="insuranceType">
                                <option value="basic">Basic</option>
                                <option value="premium">Premium</option>
                                <option value="comprehensive">Comprehensive</option>
                                <option value="full">Full</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Car Type</td>
                        <td><input type="text" name="carType" value="" /></td>
                    </tr>
                    <tr>
                        <td>Model Number</td>
                        <td><input type="text" name="modelNumber" value="" /></td>
                    </tr>
                    <tr>
                        <td>Expiry Date</td>
                        <td><input type="text" name="expiryDate" value=""
                                placeholder="YYYY-MM-DD" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit" /></td>
                    </tr>
                    
                </table>
            </form>
        </div>
    </div>
</body>
</html>
