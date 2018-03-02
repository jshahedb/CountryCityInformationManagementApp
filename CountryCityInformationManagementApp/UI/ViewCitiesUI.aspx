<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCitiesUI.aspx.cs" Inherits="CountryCityInformationManagementApp.UI.ViewCitiesUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
             <legend> View Cities</legend>
             <br />
             <fieldset style="width: 363px">
                     <legend> View Cities</legend>
    
                     <asp:RadioButton ID="cityNameRadioButton" runat="server" Text="City Name" GroupName="cities" />

                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <br />

                     <asp:RadioButton ID="countryRadioButton" runat="server" Text="Country" GroupName="cities" />

                     <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="119px">
                     </asp:DropDownList>
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
                <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CityName") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("About") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoOfDwellers") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Location") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Weather">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Weather") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Country") %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("AboutCountry") %>'>'></asp:Label>
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
