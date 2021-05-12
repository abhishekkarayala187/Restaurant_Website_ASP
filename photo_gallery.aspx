<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="photo_gallery.aspx.cs" Inherits="Restaurant_Website.photo_gallery1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <style>
        body{
            background-color:antiquewhite;
        }
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 100px;
    height: 100px;
    display: block;
}
img{
        max-width: 100%;
        max-height: 100%;
        display: block;
    }

div.gallery:hover {
    border: 1px solid #777;
}


        .auto-style1 {
            width: 75%;
            height: 108px;
        }
    </style>

<div class="gallery">
  <a href="Haveli.jpg">
    <img src="Haveli.jpg" alt="Haveli">
  </a>
</div>

<div class="gallery">
  <a href="ima.jpg">
    <img src="ima.jpg" alt="ima" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="images.jpg">
    <img src="images.jpg" alt="Image" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="menu.jpg">
    <img src="menu.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="bh.jpg">
    <img src="bh.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="banner3.jpg">
    <img src="banner3.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="haveli11.jpg">
    <img src="haveli11.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="mountain-gate-family-restaurant-m.jpg">
    <img src="mountain-gate-family-restaurant-m.jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="main6.jpg">
    <img src="main6.jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="north-indian-breakfast-625_625x350_71446476841.jpg">
    <img src="north-indian-breakfast-625_625x350_71446476841.jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="ct-food-new-loop-food-hall-minority-business-entrepreneur-incubator-20170912.jpg">
    <img src="ct-food-new-loop-food-hall-minority-business-entrepreneur-incubator-20170912.jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="images (1).jpg">
    <img src="images (1).jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="menu1.jpg">
    <img src="menu1.jpg" width="500" height="100">
  </a>
</div>

<div class="gallery">
  <a href="haveli3.jpg">
    <img src="haveli3.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="haveli4.jpg">
    <img src="haveli4.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="haveli5.jpg">
    <img src="haveli5.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="haveli6.jpg">
    <img src="haveli6.jpg" width="500" height="100">
  </a>
</div>
<div class="gallery">
  <a href="haveli7.jpg">
    <img src="haveli7.jpg" width="500" height="100">
  </a>
</div>
</asp:Content>
