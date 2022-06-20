<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dbcw.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />    

</head>
<body>
    <form id="form1" runat="server" >
        <div />
        <div class="table-responsive"> 

        <table class="table table-striped table-hover" >
        <thead>
            <tr>
                    <th>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="753px" Height="178px">
            <Columns>
                <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
                <asp:BoundField DataField="PERSONNAME" HeaderText="PERSONNAME" SortExpression="PERSONNAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:TemplateField ShowHeader="False" HeaderText="Action">
                  
                    <EditItemTemplate>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button2" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button ID="Button2" runat="server" class="btn btn-primary" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView> 

                    </th>
                    
            </tr>
        </thead>
            </table>
             
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" Width="133px" Height="178px">
                <EditItemTemplate>
                    PERSON_ID:
                    <asp:Label ID="PERSON_IDLabel1" runat="server" Text='<%# Eval("PERSON_ID") %>' />
                    <br />
                    PERSONNAME:
                    <asp:TextBox ID="PERSONNAMETextBox" runat="server" Text='<%# Bind("PERSONNAME") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    <asp:LinkButton  ID="UpdateButton" class="btn btn-primary"  runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" class="btn btn-primary"  runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    PERSON_ID:
                    <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' />
                    <br />
                    PERSONNAME:
                    <asp:TextBox ID="PERSONNAMETextBox" runat="server" Text='<%# Bind("PERSONNAME") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-primary"  style="margin-top:0.5em" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PERSON_ID:
                    <asp:Label ID="PERSON_IDLabel" runat="server" Text='<%# Eval("PERSON_ID") %>' />
                    <br />
                    PERSONNAME:
                    <asp:Label ID="PERSONNAMELabel" runat="server" Text='<%# Bind("PERSONNAME") %>' />
                    <br />
                    EMAIL:
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    ADDRESS:
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                      <!-- <asp:LinkButton class="btn btn-primary" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                  &nbsp;  <asp:LinkButton class="btn btn-primary" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> -->
                    &nbsp;<asp:LinkButton class="btn btn-primary" ID="NewButton" style="margin-top:0.5em" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSONNAME&quot;, &quot;EMAIL&quot;, &quot;ADDRESS&quot;) VALUES (:PERSON_ID, :PERSONNAME, :EMAIL, :ADDRESS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;PERSONNAME&quot;, &quot;EMAIL&quot;, &quot;ADDRESS&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSONNAME&quot; = :PERSONNAME, &quot;EMAIL&quot; = :EMAIL, &quot;ADDRESS&quot; = :ADDRESS WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
            <DeleteParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="PERSONNAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PERSONNAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
