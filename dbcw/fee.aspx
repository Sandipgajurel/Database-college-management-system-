<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fee.aspx.cs" Inherits="dbcw.fee" %>

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
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="SEMESTER" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SEMESTER" HeaderText="SEMESTER" ReadOnly="True" SortExpression="SEMESTER" />
                <asp:BoundField DataField="TOTALFEE" HeaderText="TOTALFEE" SortExpression="TOTALFEE" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" class="btn btn-primary"  runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-primary"  runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" class="btn btn-primary"  CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary"  CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</th>
                    
            </tr>
        </thead>
            </table>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="SEMESTER" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                SEMESTER:
                <br />
                <asp:Label ID="SEMESTERLabel1" runat="server" Text='<%# Eval("SEMESTER") %>' />
                <br />
                TOTALFEE:
                <br />
                <asp:TextBox ID="TOTALFEETextBox" runat="server" Text='<%# Bind("TOTALFEE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                SEMESTER:
                <br />
                <asp:TextBox ID="SEMESTERTextBox" runat="server" Text='<%# Bind("SEMESTER") %>' />
                <br />

                TOTALFEE:
                <br />
                <asp:TextBox ID="TOTALFEETextBox" runat="server" Text='<%# Bind("TOTALFEE") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                SEMESTER:
                <asp:Label ID="SEMESTERLabel" runat="server" Text='<%# Eval("SEMESTER") %>' />
                <br />
                TOTALFEE:
                <asp:Label ID="TOTALFEELabel" runat="server" Text='<%# Bind("TOTALFEE") %>' />
                <br />
              <!--  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> -->
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" class="btn btn-primary" style="margin-top:0.5em" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
                 </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;FEEV1&quot; WHERE &quot;SEMESTER&quot; = :SEMESTER" InsertCommand="INSERT INTO &quot;FEEV1&quot; (&quot;SEMESTER&quot;, &quot;TOTALFEE&quot;) VALUES (:SEMESTER, :TOTALFEE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;SEMESTER&quot;, &quot;TOTALFEE&quot; FROM &quot;FEEV1&quot;" UpdateCommand="UPDATE &quot;FEEV1&quot; SET &quot;TOTALFEE&quot; = :TOTALFEE WHERE &quot;SEMESTER&quot; = :SEMESTER">
            <DeleteParameters>
                <asp:Parameter Name="SEMESTER" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SEMESTER" Type="Decimal" />
                <asp:Parameter Name="TOTALFEE" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TOTALFEE" Type="Decimal" />
                <asp:Parameter Name="SEMESTER" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
