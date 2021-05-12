<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="table-booking.aspx.cs" Inherits="Restaurant_Website.table_booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <style>
body {
    background-image: url("ima.jpg");
}
</style>

		
<div style="width: 400px;">
</div>
<div style="padding-bottom: 18px;font-size : 24px;color: white;font-style:oblique">Table Reservation</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">We would be glad to reserve a table for you at our restaurant!</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;" >Name<span style="color: red;"> *
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Name" ErrorMessage="Name is Required" BackColor="White" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </span><br/>
    <asp:TextBox ID="Name" style="width : 400px;" runat="server" BorderStyle="Outset"></asp:TextBox>
</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Phone<span style="color: red;"> *

    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="Phone Number Required" BackColor="White" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </span><br/>
    <asp:TextBox ID="Phone" style="width : 400px;" runat="server" BorderStyle="Outset"></asp:TextBox>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Phone" ErrorMessage="Please enter Correct Mobile Number" ValidationExpression="(?:\s+|)((0|(?:(\+|)91))(?:\s|-)*(?:(?:\d(?:\s|-)*\d{9})|(?:\d{2}(?:\s|-)*\d{8})|(?:\d{3}(?:\s|-)*\d{7}))|\d{10})(?:\s+|)" BackColor="White" ForeColor="#CC0000"></asp:RegularExpressionValidator>

</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Email<span style="color: red;"> *

    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is Required" ControlToValidate="Email" BackColor="White" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </span><br/>
    <asp:TextBox ID="Email" style="width : 400px;" runat="server" BorderStyle="Outset"></asp:TextBox>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Correct Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" BackColor="White" ForeColor="#CC0000"></asp:RegularExpressionValidator>

</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Date<span style="color: red;"> *

    </span>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br/>

</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Time<span style="color: red;"> *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="White" ControlToValidate="DropDownList1" ErrorMessage="Enter start time"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:CustomValidator ID="CustomValidator1" runat="server" BackColor="White" ControlToValidate="DropDownList2" ErrorMessage="Please choose correct time." OnServerValidate="CustemValidator1_ServerValidate"></asp:CustomValidator>

    <br />

    </span>
    Start time:
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>10:00 AM</asp:ListItem>
        <asp:ListItem>10:30 AM</asp:ListItem>
        <asp:ListItem>11:00 AM</asp:ListItem>
        <asp:ListItem>11:30 AM</asp:ListItem>
        <asp:ListItem>12:00 PM</asp:ListItem>
        <asp:ListItem>12:30 PM</asp:ListItem>
        <asp:ListItem>01:00 PM</asp:ListItem>
        <asp:ListItem>01:30 PM</asp:ListItem>
        <asp:ListItem>02:00 PM</asp:ListItem>
        <asp:ListItem>02:30 PM</asp:ListItem>
        <asp:ListItem>03:00 PM</asp:ListItem>
        <asp:ListItem>03:30 PM</asp:ListItem>
        <asp:ListItem>04:00 PM</asp:ListItem>
        <asp:ListItem>04:30 PM</asp:ListItem>
        <asp:ListItem>05:00 PM</asp:ListItem>
        <asp:ListItem>05:30 PM</asp:ListItem>
        <asp:ListItem>06:00 PM</asp:ListItem>
        <asp:ListItem>06:30 PM</asp:ListItem>
        <asp:ListItem>07:00 PM</asp:ListItem>
        <asp:ListItem>07:30 PM</asp:ListItem>
        <asp:ListItem>08:00 PM</asp:ListItem>
        <asp:ListItem>08:30 PM</asp:ListItem>
    </asp:DropDownList>

    End time:
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>10:30 AM</asp:ListItem>
        <asp:ListItem>11:00 AM</asp:ListItem>
        <asp:ListItem>11:30 AM</asp:ListItem>
        <asp:ListItem>12:00 PM</asp:ListItem>
        <asp:ListItem>12:30 PM</asp:ListItem>
        <asp:ListItem>01:00 PM</asp:ListItem>
        <asp:ListItem>01:30 PM</asp:ListItem>
        <asp:ListItem>02:00 PM</asp:ListItem>
        <asp:ListItem>02:30 PM</asp:ListItem>
        <asp:ListItem>03:00 PM</asp:ListItem>
        <asp:ListItem>03:30 PM</asp:ListItem>
        <asp:ListItem>04:00 PM</asp:ListItem>
        <asp:ListItem>04:30 PM</asp:ListItem>
        <asp:ListItem>05:00 PM</asp:ListItem>
        <asp:ListItem>05:30 PM</asp:ListItem>
        <asp:ListItem>06:00 PM</asp:ListItem>
        <asp:ListItem>06:30 PM</asp:ListItem>
        <asp:ListItem>07:00 PM</asp:ListItem>
        <asp:ListItem>07:30 PM</asp:ListItem>
        <asp:ListItem>08:00 PM</asp:ListItem>
        <asp:ListItem>08:30 PM</asp:ListItem>
        <asp:ListItem>09:00 PM</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:Button ID="check" runat="server" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" OnClick="Check_Click" Text="Check Availability" />
    <br />
    <asp:Label ID="checking" runat="server" BackColor="Black"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False">
        <asp:ListItem>Table No 1</asp:ListItem>
        <asp:ListItem>Table No 2</asp:ListItem>
        <asp:ListItem>Table No 3</asp:ListItem>
        <asp:ListItem>Table No 4</asp:ListItem>
        <asp:ListItem>Table No 5</asp:ListItem>
        <asp:ListItem>Table No 6</asp:ListItem>
        <asp:ListItem>Table No 7</asp:ListItem>
        <asp:ListItem>Table No 8</asp:ListItem>
        <asp:ListItem>Table No 9</asp:ListItem>
        <asp:ListItem>Table No 10</asp:ListItem>
    </asp:RadioButtonList>
    <br/>

</div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Number of Attendees<span style="color: red;"> *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please choose Number of Attendees" BackColor="White" ControlToValidate="Attendees" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </span><br/>
    <asp:TextBox ID="Attendees" runat="server" TextMode="Number" BorderStyle="Outset"></asp:TextBox>
&nbsp;
    <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="White" ControlToValidate="Attendees" ErrorMessage="Please enter attendees between 1 to 10" ForeColor="#CC0000" MaximumValue="10" MinimumValue="1"></asp:RangeValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="Attendees" ErrorMessage="Please enter correct number" ForeColor="#CC0000" ValidationExpression="^(?:[1-9]|0[1-9]|10)$"></asp:RegularExpressionValidator>
    </div>
<div style="padding-bottom: 18px;font-size : 20px;color: white;">Comments / Additional Requests<br/>
&nbsp;<asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" ToolTip="Please Specify other requests" BorderStyle="Inset"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" OnClick="SubmitButton_Click" />
    &nbsp;
    <asp:Button ID="ResetButton" runat="server" Text="Reset" BackColor="#333333" BorderStyle="Ridge" ForeColor="White" OnClick="ResetButton_Click" />
</div>

</asp:Content>
