<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Route.aspx.cs" Inherits="EagleEatsProjectSpring2022.Route" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MYRoute</title>
</head>
<body>
    <h1>My Route</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Route_Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Route_Id" HeaderText="Route_Id" InsertVisible="False" ReadOnly="True" SortExpression="Route_Id" />
                    <asp:BoundField DataField="Sender_Id" HeaderText="Sender_Id" SortExpression="Sender_Id" />
                    <asp:BoundField DataField="Receiver_Id" HeaderText="Receiver_Id" SortExpression="Receiver_Id" />
                    <asp:BoundField DataField="Object_Id" HeaderText="Object_Id" SortExpression="Object_Id" />
                    <asp:BoundField DataField="FromLocation" HeaderText="FromLocation" SortExpression="FromLocation" />
                    <asp:BoundField DataField="ToLocation" HeaderText="ToLocation" SortExpression="ToLocation" />
                    <asp:BoundField DataField="RequestionTime" HeaderText="RequestionTime" SortExpression="RequestionTime" />
                    <asp:BoundField DataField="BeginTime" HeaderText="BeginTime" SortExpression="BeginTime" />
                    <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
                    <asp:BoundField DataField="RouteCost" HeaderText="RouteCost" SortExpression="RouteCost" />
                    <asp:BoundField DataField="RouteDistance" HeaderText="RouteDistance" SortExpression="RouteDistance" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" SelectCommand="SELECT * FROM [Route]"></asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Route_Id" DataSourceID="SqlDataSource1" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Route_Id:
                    <asp:Label ID="Route_IdLabel1" runat="server" Text='<%# Eval("Route_Id") %>' />
                    <br />
                    Sender_Id:
                    <asp:TextBox ID="Sender_IdTextBox" runat="server" Text='<%# Bind("Sender_Id") %>' />
                    <br />
                    Receiver_Id:
                    <asp:TextBox ID="Receiver_IdTextBox" runat="server" Text='<%# Bind("Receiver_Id") %>' />
                    <br />
                    Object_Id:
                    <asp:TextBox ID="Object_IdTextBox" runat="server" Text='<%# Bind("Object_Id") %>' />
                    <br />
                    FromLocation:
                    <asp:TextBox ID="FromLocationTextBox" runat="server" Text='<%# Bind("FromLocation") %>' />
                    <br />
                    ToLocation:
                    <asp:TextBox ID="ToLocationTextBox" runat="server" Text='<%# Bind("ToLocation") %>' />
                    <br />
                    RequestionTime:
                    <asp:TextBox ID="RequestionTimeTextBox" runat="server" Text='<%# Bind("RequestionTime") %>' />
                    <br />
                    BeginTime:
                    <asp:TextBox ID="BeginTimeTextBox" runat="server" Text='<%# Bind("BeginTime") %>' />
                    <br />
                    EndTime:
                    <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
                    <br />
                    RouteCost:
                    <asp:TextBox ID="RouteCostTextBox" runat="server" Text='<%# Bind("RouteCost") %>' />
                    <br />
                    RouteDistance:
                    <asp:TextBox ID="RouteDistanceTextBox" runat="server" Text='<%# Bind("RouteDistance") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Sender_Id:
                    <asp:TextBox ID="Sender_IdTextBox" runat="server" Text='<%# Bind("Sender_Id") %>' />
                    <br />
                    Receiver_Id:
                    <asp:TextBox ID="Receiver_IdTextBox" runat="server" Text='<%# Bind("Receiver_Id") %>' />
                    <br />
                    Object_Id:
                    <asp:TextBox ID="Object_IdTextBox" runat="server" Text='<%# Bind("Object_Id") %>' />
                    <br />
                    FromLocation:
                    <asp:TextBox ID="FromLocationTextBox" runat="server" Text='<%# Bind("FromLocation") %>' />
                    <br />
                    ToLocation:
                    <asp:TextBox ID="ToLocationTextBox" runat="server" Text='<%# Bind("ToLocation") %>' />
                    <br />
                    RequestionTime:
                    <asp:TextBox ID="RequestionTimeTextBox" runat="server" Text='<%# Bind("RequestionTime") %>' />
                    <br />
                    BeginTime:
                    <asp:TextBox ID="BeginTimeTextBox" runat="server" Text='<%# Bind("BeginTime") %>' />
                    <br />
                    EndTime:
                    <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
                    <br />
                    RouteCost:
                    <asp:TextBox ID="RouteCostTextBox" runat="server" Text='<%# Bind("RouteCost") %>' />
                    <br />
                    RouteDistance:
                    <asp:TextBox ID="RouteDistanceTextBox" runat="server" Text='<%# Bind("RouteDistance") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Route_Id:
                    <asp:Label ID="Route_IdLabel" runat="server" Text='<%# Eval("Route_Id") %>' />
                    <br />
                    Sender_Id:
                    <asp:Label ID="Sender_IdLabel" runat="server" Text='<%# Bind("Sender_Id") %>' />
                    <br />
                    Receiver_Id:
                    <asp:Label ID="Receiver_IdLabel" runat="server" Text='<%# Bind("Receiver_Id") %>' />
                    <br />
                    Object_Id:
                    <asp:Label ID="Object_IdLabel" runat="server" Text='<%# Bind("Object_Id") %>' />
                    <br />
                    FromLocation:
                    <asp:Label ID="FromLocationLabel" runat="server" Text='<%# Bind("FromLocation") %>' />
                    <br />
                    ToLocation:
                    <asp:Label ID="ToLocationLabel" runat="server" Text='<%# Bind("ToLocation") %>' />
                    <br />
                    RequestionTime:
                    <asp:Label ID="RequestionTimeLabel" runat="server" Text='<%# Bind("RequestionTime") %>' />
                    <br />
                    BeginTime:
                    <asp:Label ID="BeginTimeLabel" runat="server" Text='<%# Bind("BeginTime") %>' />
                    <br />
                    EndTime:
                    <asp:Label ID="EndTimeLabel" runat="server" Text='<%# Bind("EndTime") %>' />
                    <br />
                    RouteCost:
                    <asp:Label ID="RouteCostLabel" runat="server" Text='<%# Bind("RouteCost") %>' />
                    <br />
                    RouteDistance:
                    <asp:Label ID="RouteDistanceLabel" runat="server" Text='<%# Bind("RouteDistance") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EagleEatsDBConnectionString %>" DeleteCommand="DELETE FROM Route WHERE (Route_Id = @Route_Id)" InsertCommand="INSERT INTO Route(Sender_Id, Receiver_Id, Object_Id, FromLocation, ToLocation, RequestionTime, BeginTime, EndTime, RouteCost, RouteDistance) VALUES (@Sender_Id, @Receiver_Id, @Object_Id, @FromLocation, @ToLocation, @RequestionTime, @BeginTime, @EndTime, @RouteCost, @RouteDistance)" SelectCommand="SELECT Route_Id, Sender_Id, Receiver_Id, Object_Id, FromLocation, ToLocation, RequestionTime, BeginTime, EndTime, RouteCost, RouteDistance FROM Route WHERE (Route_Id = @Route_Id)" UpdateCommand="UPDATE Route SET Sender_Id = @Sender_Id, Receiver_Id = @Reveiver_Id, Object_Id = @Object_Id, FromLocation = @FromLocation, ToLocation = @ToLocation, RequestionTime = @RequestionTime, BeginTime = @BeginTime, RouteCost = @RouteCost, EndTime = @EndTime, RouteDistance = @RouteDistance WHERE (Route_Id = @Route_Id)">
                <DeleteParameters>
                    <asp:Parameter Name="Route_Id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sender_Id" />
                    <asp:Parameter Name="Receiver_Id" />
                    <asp:Parameter Name="Object_Id" />
                    <asp:Parameter Name="FromLocation" />
                    <asp:Parameter Name="ToLocation" />
                    <asp:Parameter Name="RequestionTime" />
                    <asp:Parameter Name="BeginTime" />
                    <asp:Parameter Name="EndTime" />
                    <asp:Parameter Name="RouteCost" />
                    <asp:Parameter Name="RouteDistance" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="Route_Id" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Sender_Id" />
                    <asp:Parameter Name="Reveiver_Id" />
                    <asp:Parameter Name="Object_Id" />
                    <asp:Parameter Name="FromLocation" />
                    <asp:Parameter Name="ToLocation" />
                    <asp:Parameter Name="RequestionTime" />
                    <asp:Parameter Name="BeginTime" />
                    <asp:Parameter Name="RouteCost" />
                    <asp:Parameter Name="EndTime" />
                    <asp:Parameter Name="RouteDistance" />
                    <asp:Parameter Name="Route_Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
