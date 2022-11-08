<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
    <base href="http://demos.telerik.com/kendo-ui/maskedtextbox/index">
    <style>html { font-size: 12px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title>Ticket ID: 941838</title>
    <link rel="stylesheet" href="http://cdn.kendostatic.com/2015.1.429/styles/kendo.common-bootstrap.min.css" />
    <link rel="stylesheet" href="http://cdn.kendostatic.com/2015.1.429/styles/kendo.bootstrap.min.css" />
    <link rel="stylesheet" href="http://cdn.kendostatic.com/2015.1.429/styles/kendo.dataviz.min.css" />
    <link rel="stylesheet" href="http://cdn.kendostatic.com/2015.1.429/styles/kendo.dataviz.bootstrap.min.css" />

    <script src="http://cdn.kendostatic.com/2015.1.429/js/jquery.min.js"></script>
    <script src="http://cdn.kendostatic.com/2015.1.429/js/kendo.all.min.js"></script>
</head>
<body>

        <div id="example">
            <div class="demo-section k-header">
                <h4>Mask Input </h4>
                <ul id="fieldlist">
                    <li>
                        <label for="phone_number">Phone number:</label>
                        <input id="phone_number" value="05:55 PM" />
                    </li>
                </ul>
            </div>

            <script>
                $(document).ready(function () {
                    $("#phone_number").kendoMaskedTextBox({
                        mask: "##:## ??",
                        clearPromptChar: true
                    });
                });
            </script>

            <style>
                .demo-section {
                    width: 400px;
                }

                #fieldlist
                {
                    margin:0;
                    padding:0;
                }

                #fieldlist li
                {
                    list-style:none;
                    padding:10px 0;
                }

                #fieldlist label {
                    display: inline-block;
                    width: 150px;
                    margin-right: 5px;
                    text-align: right;
                }
            </style>
        </div>


</body>
</html>

