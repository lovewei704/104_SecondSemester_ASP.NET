<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Javascript.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

        <script>
            var source;
            var target;

            function Start(divx) { source = divx; }
            function Enter(divx) { target = divx; }
            function SwtichBall() {
                var temp;
                temp = document.getElementById(source).innerHTML;
                document.getElementById(source).innerHTML = document.getElementById(target).innerHTML;
                document.getElementById(target).innerHTML = temp;
            }
    </script>

    <table border="1">
        <tr>
            <td><div id="div1" draggable="true" ondragstart="Start('div1')" ondragenter="Enter('div1')" ondragend="SwtichBall()" ><img src="img/1.png" /></div></td>
            <td><div id="div2" draggable="true" ondragstart="Start('div2')" ondragenter="Enter('div2')" ondragend="SwtichBall()" ><img src="img/2.png" /></div></td>
            <td><div id="div3" draggable="true" ondragstart="Start('div3')" ondragenter="Enter('div3')" ondragend="SwtichBall()" ><img src="img/3.png" /></div></td>
        </tr>
        <tr>
            <td><div id="div4" draggable="true" ondragstart="Start('div4')" ondragenter="Enter('div4')" ondragend="SwtichBall()" ><img src="img/4.jpg" /></div></td>
            <td><div id="div5" draggable="true" ondragstart="Start('div5')" ondragenter="Enter('div5')" ondragend="SwtichBall()" ><img src="img/5.jpg" /></div></td>
            <td><div id="div6" draggable="true" ondragstart="Start('div6')" ondragenter="Enter('div6')" ondragend="SwtichBall()" ><img src="img/6.png" /></div></td>
        </tr>
        <tr>
            <td><div id="div7" draggable="true" ondragstart="Start('div7')" ondragenter="Enter('div7')" ondragend="SwtichBall()" ><img src="img/7.png" /></div></td>
            <td><div id="div8" draggable="true" ondragstart="Start('div8')" ondragenter="Enter('div8')" ondragend="SwtichBall()" ><img src="img/8.jpg" /></div></td>
            <td><div id="div9" draggable="true" ondragstart="Start('div9')" ondragenter="Enter('div9')" ondragend="SwtichBall()" ><img src="img/9.jpg" /></div></td>
        </tr>
    </table>



</asp:Content>

