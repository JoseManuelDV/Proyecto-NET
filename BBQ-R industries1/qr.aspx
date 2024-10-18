<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qr.aspx.cs" Inherits="BBQ_R_industries1.qr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@ViewData["Title"]</title>
    <style>
        /* Estilos para la barra de navegación */
        nav {
            background-color: #343a40;
            padding: 10px;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.2em;
        }
        nav ul li a:hover {
            color: #f8f9fa;
        }

        /* Contenedor principal */
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #343a40;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="color"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 1em;
        }

        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1.2em;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Estilos para la imagen del código QR */
        img {
            display: block;
            margin: 20px auto;
            max-width: 100%;
            height: auto;
        }

        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 0.9em;
            color: #6c757d;
        }

    </style>
</head>
<body>
    <!-- Barra de navegación -->
    <nav>
        <ul>
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Acerca de</a></li>
            <li><a href="#">Generar QR</a></li>
        </ul>
    </nav>

    <!-- Contenedor principal -->
    <div class="container">
        <h1>Generador de Códigos QR</h1>
        <form method="post" action="/Home/GenerateQR">
            <div>
                <label for="inputText">Texto o URL:</label>
                <input type="text" id="inputText" name="inputText" placeholder="Escribe aquí el texto o URL" required>
            </div>
            <div>
                <label for="color">Color del QR:</label>
                <input type="color" id="color" name="color" value="#000000">
            </div>
            <div>
                <label for="logo">Incluir logotipo:</label>
                <input type="file" id="logo" name="logo" accept="image/*">
            </div>
            <button type="submit">Generar QR</button>
        </form>

       
            <h2>Código QR Generado:</h2>
            <img src="data:image/png;base64,@ViewBag.QRCodeImage" alt="Código QR generado" />
        
    </div>

    <!-- Pie de página -->

</body>
</html>

</asp:Content>
