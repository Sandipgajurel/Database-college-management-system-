<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="dbcw.StudentDetails" %>

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
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                    <asp:TemplateField ShowHeader="False" HeaderText="Action">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" class="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton3" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton4" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
</th>
                    
            </tr>
        </thead>
            </table>

     
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" Height="150px" Width="92px">
            <EditItemTemplate>
                STUDENT_ID:
                <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                <br />
                P_ID:
                <asp:TextBox ID="P_IDTextBox" runat="server" Text='<%# Bind("P_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" class="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                STUDENT_ID:
                <asp:TextBox ID="STUDENT_IDTextBox" style="margin-bottom:0.5em" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                <br />
                P_ID:
                <asp:DropDownList ID="DropDownList1" class="btn btn-secondary dropdown-toggle" style="height:auto" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSON_ID" DataValueField="PERSON_ID" Height="25px" SelectedValue='<%# Bind("STUDENT_ID") %>' Width="77px">
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="InsertButton" class="btn btn-primary" style="margin-top:1em" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-primary" style="margin-top:1em" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                STUDENT_ID:
                <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                <br />
                P_ID:
                <asp:Label ID="P_IDLabel" runat="server" Text='<%# Bind("P_ID") %>' />
                <br />
                <!-- <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> -->
                &nbsp;<asp:LinkButton ID="NewButton" style="margin-top:1em" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>

            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;STUDENTDETAIL&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENTDETAIL&quot; (&quot;STUDENT_ID&quot;, &quot;P_ID&quot;) VALUES (:STUDENT_ID, :P_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;P_ID&quot; FROM &quot;STUDENTDETAIL&quot;" UpdateCommand="UPDATE &quot;STUDENTDETAIL&quot; SET &quot;P_ID&quot; = :P_ID WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
            <DeleteParameters>
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                <asp:Parameter Name="P_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="P_ID" Type="Decimal" />
                <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSONNAME&quot;) VALUES (:PERSON_ID, :PERSONNAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;PERSONNAME&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSONNAME&quot; = :PERSONNAME WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
            <DeleteParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="PERSONNAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PERSONNAME" Type="String" />
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
