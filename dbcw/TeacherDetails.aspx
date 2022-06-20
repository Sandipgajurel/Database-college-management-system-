<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherDetails.aspx.cs" Inherits="dbcw.TeacherDetails" %>

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
            <asp:GridView ID="GridView1"  CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" SortExpression="PERSON_ID" />
                    <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
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

            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" Height="132px" Width="166px">
                <EditItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                    <br />
                    PERSON_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSON_ID" DataValueField="PERSON_ID">
                    </asp:DropDownList>
                    <br />
                    SALARY:
                    <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    TEACHER_ID:
                    <asp:TextBox ID="TEACHER_IDTextBox" style="margin-bottom:0.5em" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                    <br />
                    PERSON_ID:
                    <asp:DropDownList ID="DropDownList1"  class="btn btn-secondary dropdown-toggle" style="height:auto" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSON_ID" DataValueField="PERSON_ID" SelectedValue='<%# Bind("PERSON_ID") %>'>
                    </asp:DropDownList>
                    <br />
                    SALARY:
                    <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-primary" runat="server" style="margin-top:0.5em" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel" runat="server" BorderStyle="None" Text='<%# Eval("TEACHER_ID") %>' />
                    <br />
                    PERSON_ID:
                    <asp:Label ID="PERSON_IDLabel" runat="server" Text='<%# Bind("PERSON_ID") %>' />
                    <br />
                    SALARY:
                    <asp:Label ID="SALARYLabel" runat="server" BorderStyle="None" Text='<%# Bind("SALARY") %>' />
                    <br />
                   <!-- <asp:LinkButton ID="EditButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /> -->
                    &nbsp;<asp:LinkButton ID="NewButton" class="btn btn-primary" style="margin-top:0.5em" runat="server" CausesValidation="False" CommandName="New" Text="New" Width="50px" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TECHERDETAIL&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TECHERDETAIL&quot; (&quot;TEACHER_ID&quot;, &quot;PERSON_ID&quot;, &quot;SALARY&quot;) VALUES (:TEACHER_ID, :PERSON_ID, :SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;PERSON_ID&quot;, &quot;SALARY&quot; FROM &quot;TECHERDETAIL&quot;" UpdateCommand="UPDATE &quot;TECHERDETAIL&quot; SET &quot;PERSON_ID&quot; = :PERSON_ID, &quot;SALARY&quot; = :SALARY WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="SALARY" Type="Single" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                <asp:Parameter Name="SALARY" Type="Single" />
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSONNAME&quot;) VALUES (:PERSON_ID, :PERSONNAME)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;PERSON_ID&quot;, &quot;PERSONNAME&quot; FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSONNAME&quot; = :PERSONNAME WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
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
