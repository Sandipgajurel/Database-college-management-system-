<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="dbcw.ModuleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />    

</head>
<body>
    <form id="form1" runat="server">
<div />
             <div class="table-responsive"> 


        <table class="table table-striped table-hover" >
        <thead>
            <tr>
                    <th>

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1" Height="131px">
            <Columns>
                <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
                <asp:BoundField DataField="MODULENAME" HeaderText="MODULENAME" SortExpression="MODULENAME" />
                <asp:BoundField DataField="CREADITHOURS" HeaderText="CREADITHOURS" SortExpression="CREADITHOURS" />
                <asp:TemplateField ShowHeader="False" HeaderText="Action">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</th>
                    
            </tr>
        </thead>
            </table>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1" Width="231px">
            <EditItemTemplate>
                MODULE_ID:
                <br />
                <asp:Label ID="MODULE_IDLabel1" runat="server" Text='<%# Eval("MODULE_ID") %>' />
                <br />
                MODULENAME:
                <br />
                <asp:TextBox ID="MODULENAMETextBox" runat="server" Text='<%# Bind("MODULENAME") %>' />
                <br />
                CREADITHOURS:
                <br />
                <asp:TextBox ID="CREADITHOURSTextBox" runat="server" Text='<%# Bind("CREADITHOURS") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" class="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MODULE_ID:
                <asp:TextBox ID="MODULE_IDTextBox" runat="server" Text='<%# Bind("MODULE_ID") %>' />
                <br />
                MODULENAME:
                <asp:TextBox ID="MODULENAMETextBox" runat="server" Text='<%# Bind("MODULENAME") %>' />
                <br />
                CREADITHOURS:
                <asp:TextBox ID="CREADITHOURSTextBox" runat="server" Text='<%# Bind("CREADITHOURS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" style="margin-top:0.5em" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MODULE_ID:
                <asp:Label ID="MODULE_IDLabel" runat="server" Text='<%# Eval("MODULE_ID") %>' />
                <br />
                MODULENAME:
                <asp:Label ID="MODULENAMELabel" runat="server" Text='<%# Bind("MODULENAME") %>' />
                <br />
                CREADITHOURS:
                <asp:Label ID="CREADITHOURSLabel" runat="server" Text='<%# Bind("CREADITHOURS") %>' />
                <br />
               <!-- <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> -->
                &nbsp;<asp:LinkButton ID="NewButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
                 </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULEDETAIL&quot; WHERE &quot;MODULE_ID&quot; = :MODULE_ID" InsertCommand="INSERT INTO &quot;MODULEDETAIL&quot; (&quot;MODULE_ID&quot;, &quot;MODULENAME&quot;, &quot;CREADITHOURS&quot;) VALUES (:MODULE_ID, :MODULENAME, :CREADITHOURS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;MODULE_ID&quot;, &quot;MODULENAME&quot;, &quot;CREADITHOURS&quot; FROM &quot;MODULEDETAIL&quot;" UpdateCommand="UPDATE &quot;MODULEDETAIL&quot; SET &quot;MODULENAME&quot; = :MODULENAME, &quot;CREADITHOURS&quot; = :CREADITHOURS WHERE &quot;MODULE_ID&quot; = :MODULE_ID">
            <DeleteParameters>
                <asp:Parameter Name="MODULE_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MODULE_ID" Type="String" />
                <asp:Parameter Name="MODULENAME" Type="String" />
                <asp:Parameter Name="CREADITHOURS" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MODULENAME" Type="String" />
                <asp:Parameter Name="CREADITHOURS" Type="Decimal" />
                <asp:Parameter Name="MODULE_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
