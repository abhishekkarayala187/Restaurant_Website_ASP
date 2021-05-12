<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="food-menu.aspx.cs" Inherits="Restaurant_Website.food_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <style>
#customers {
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
<style>
body {
    background-image: url("images.jpg");
    min-height: 100%;
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
background-size: cover;}
</style>

<table id="customers">
  <tr>
    <th>Food</th>
    <th>Quantity</th>
    <th>Rate</th>
  </tr>
  <tr>
    <td style="background-color:gray">SOUP</td>
    <td style="background-color:gray"></td>
    <td style="background-color:gray"></td>
  </tr>
  <tr>
    <td>Cream Of Tomato Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Cream Of Veg Mashroom Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Sweet Corn Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Hot 'N' Sour Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Manchow Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Talumein Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Clear Wonton Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td>Lemon Coriander Soup</td>
    <td>1 bl</td>
    <td>115/-</td>
  </tr>
  <tr>
    <td style="background-color:gray">STARTER CHINESE</td>
    <td style="background-color:gray"></td>
    <td style="background-color:gray"></td>
  </tr>
  <tr>
  	<td>CRISPY FRIED BABY CORN AND MUSHROOM CHILLY</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>CRISPY FRIED VEGETABLE PAPER&SALT</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>CHILLY PANEER DRY</td>
  	<td>1Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>GOLDEN FRIED BABY CORN</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>CRISPY POTATO IN HONEY&CHILLY</td>
  	<td>1 Pts</td>
  	<td>170/-</td>
  </tr>
  <tr>
  	<td style="background-color:gray">STARTER INDIAN</td>
  	<td style="background-color:gray"></td>
  	<td style="background-color:gray"></td>
  </tr>
  <tr>
  	<td>PANEER TIKKA</td>
  	<td>1 Pts</td>
  	<td>205/-</td>
  </tr>
  <tr>
  	<td>PANEER TIKKA ACHAARI</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>PANEER TIKKA HARYALLI</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>TANDOORI CHAAP</td>
  	<td>1 Pts</td>
  	<td>215/-</td>
  </tr>
  <tr>
  	<td>TANDOORI MUSHROOM</td>
  	<td>1 Pts</td>
  	<td>205/-</td>
  </tr>
  <tr>
  	<td>HAVELI SPECIAL KHUMB NAZAKAT</td>
  	<td>1 Pts</td>
  	<td>215/-</td>
  </tr>
  <tr>
  	<td>TANDOORI MIX GRILL</td>
  	<td>1 Pts</td>
  	<td>175/-</td>
  </tr>
  <tr>
  	<td style="background-color:gray">MAIN COURSE CHINESE</td>
  	<td style="background-color:gray"></td>
  	<td style="background-color:gray"></td>
  </tr>
 <tr>
  </tr>
  <tr>
  	<td>MUSHROOM, BABY CORN, BROCCOLI</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>STIR FRIED SPINACH WITH BUTTON MUSHROOM</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>MIX VEGETABLE SWEET & SOUR</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>GOBHI MANCHURIAN GRAVEY</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>CHILLY GARLIC PANEER GRAVEY</td>
  	<td>1 Pts</td>
  	<td>220/-</td>
  </tr>
  <tr>
  	<td style="background-color:gray">RICE & NOODLES</td>
  	<td style="background-color:gray"></td>
  	<td style="background-color:gray"></td>
  </tr>
  <tr>
  	<td>VEGETABLE FRIED RICE</td>
  	<td>1 Pts</td>
  	<td>165/-</td>
  </tr>
  <tr>
  	<td>GINGER RICE</td>
  	<td>1 Pts</td>
  	<td>165/-</td>
  </tr>
  <tr>
  	<td>VEGETABLE HAKKA NOODLES</td>
  	<td>1 Pts</td>
  	<td>165/-</td>
  </tr>
  <tr>
  	<td>CHILLY GARLIC NOODLES</td>
  	<td>1 Pts</td>
  	<td>175/-</td>
  </tr>
  <tr>
  	<td>VEGETABLE HOT GARLIC NOODLE</td>
  	<td>1 Pts</td>
  	<td>175/-</td>
  </tr>
  <tr>
  	<td>VEGETABLE SINGAPORE NOODLE</td>
  	<td>1 Pts</td>
  	<td>185/-</td>
  </tr>
  <tr>
  	<td>STEAMED NOODLE WITH VEGETABLE</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>CRISPY NOODLE(WITH SWEET & SOUR VEGETABLE )</td>
  	<td>1 Pts</td>
  	<td>210/-</td>
  </tr>
  <tr>
  	<td>KONG FU PAN FRIED NOODLE</td>
  	<td>1 Pts</td>
  	<td>220/-</td>
  </tr>
  <tr>
  	<td>TRIPLE COMBO(FRIED RICE,NOODLE,CRISPY NOODLE)</td>
  	<td>1 Pts</td>
  	<td>255/-</td>
  </tr>
 
</table>
</asp:Content>
