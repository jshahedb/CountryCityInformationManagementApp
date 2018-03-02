<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountries.aspx.cs" Inherits="CountryCityInformationManagementApp.UI.ViewCountries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <form id="form1" runat="server">
    <div>
        <fieldset>
             <legend> View Countries</legend>
             <br />
             <fieldset style="width: 363px">
                     <legend> Search Citeria</legend>
                         <br />
                    <asp:Label Text="Name" runat="server"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="searchTextBox" runat="server"></asp:TextBox>
                     <br />

                     <asp:Button ID="searchButton" runat="server" Text="Search" />
    
                     <br />
                     <br />
    
                </fieldset>
             <br />
             <br />
            <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="562px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:TemplateField HeaderText="SL#" >
               <ItemTemplate >
                  <%#Container.DataItemIndex+1 %>
                </ItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CityName") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("About") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of Cities">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoOfCities") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoOfDwellers") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
        </fieldset>
   <a href="Index.aspx">Back</a>
    </div>
    </form>
</body>
</html>
