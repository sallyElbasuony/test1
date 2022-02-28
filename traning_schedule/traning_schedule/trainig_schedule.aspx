<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trainig_schedule.aspx.cs" Inherits="traning_schedule.trainig_schedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .cal .ajax__calendar_header {
            background-color: darkcyan;
        }


        .cal .ajax__calendar_container {
            background-color: antiquewhite;
        }


        .auto-style1 {
            width: 100%;
            height: 476px;
        }

        .auto-style4 {
            width: 146px;
        }

        .auto-style10 {
            width: 146px;
            height: 26px;
        }

        .auto-style11 {
            height: 26px;
        }

        .auto-style12 {
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .auto-style13 {
            height: 54px;
            width: 78px;
        }

        .auto-style14 {
            height: 454px;
        }


        .auto-style17 {
            height: 48px;
        }

        .auto-style19 {
            height: 54px;
            width: 346px;
        }

        .auto-style20 {
            width: 146px;
            height: 54px;
        }

        .auto-style21 {
            height: 54px;
        }

        .auto-style22 {
            width: 146px;
            height: 56px;
        }

        .auto-style23 {
            height: 56px;
            width: 346px;
        }

        .auto-style24 {
            height: 56px;
        }

        .auto-style25 {
            width: 146px;
            height: 55px;
        }

        .auto-style26 {
            height: 55px;
            width: 346px;
        }

        .auto-style27 {
            height: 55px;
        }

        .auto-style28 {
            width: 146px;
            height: 60px;
        }

        .auto-style29 {
            height: 60px;
            width: 346px;
        }

        .auto-style30 {
            height: 60px;
        }

        .auto-style31 {
            width: 146px;
            height: 59px;
        }

        .auto-style32 {
            height: 59px;
            width: 346px;
        }

        .auto-style33 {
            height: 59px;
        }

        .auto-style34 {
            width: 146px;
            height: 58px;
        }

        .auto-style35 {
            height: 58px;
            width: 346px;
        }

        .auto-style36 {
            height: 58px;
        }

        .auto-style42 {
            height: 49px;
        }

        .auto-style46 {
            width: 146px;
            height: 50px;
        }

        .auto-style48 {
            height: 50px;
        }
    </style>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style14">
            <<table class="auto-style1" dir="rtl">
                <tr>
                    <td class="auto-style17" colspan="5">
                        <asp:Label ID="Label5" runat="server" Text="جدول المحاضرات" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style17" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label_Group_Name" runat="server" Text="مجموعة الواتس "></asp:Label>
                    </td>
                    <td class="auto-style19" colspan="5">
                        <asp:DropDownList ID="DropDownList_Group_Name" runat="server" DataSourceID="SqlDataSource_Groups" DataTextField="Group_name" AppendDataBoundItems="true" DataValueField="Group_id" AutoPostBack="True">
                            <asp:ListItem Selected="True" Text="--اختر--" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_Groups" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [Group_id], [Group_name] FROM [Groups] WHERE (([G_Is_open] = @G_Is_open) AND ([G_Is_Close] = @G_Is_Close))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="G_Is_open" Type="Boolean" />
                                <asp:Parameter DefaultValue="false" Name="G_Is_Close" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style13" colspan="2">
                        <asp:Label ID="Label6" runat="server" Text="عدد المتدربين" Width="150px"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox_No_Of_Student" runat="server" CssClass="auto-style12" Width="126px" Enabled="False" Height="34px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label_Oriantion" runat="server" Text="اللقاء التعريفي"></asp:Label>

                    </td>
                    <td class="auto-style11" colspan="3">
                        <asp:Label ID="Label_Oriantion_Date" runat="server" Text="اليوم"></asp:Label>
                        <asp:TextBox ID="TextBox_Oriantion_Date" runat="server"> </asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="ce_oriantion_date" runat="server" Enabled="True" TargetControlID="TextBox_Oriantion_Date" Format="yyyy//MM/dd"></ajaxToolkit:CalendarExtender>
                        <ajaxToolkit:FilteredTextBoxExtender ID="oriantion_date" runat="server" TargetControlID="TextBox_Oriantion_Date" FilterMode="ValidChars" ValidChars="0123456789-/:"></ajaxToolkit:FilteredTextBoxExtender>

                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    </td>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="Label_Oriantion_Time" runat="server" Text="الساعة"></asp:Label>
                        <asp:TextBox ID="TextBox_Oriantion_Time" runat="server" Width="88px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button_Add_Oriantion_day" runat="server" Text="حفظ" Width="125px" Height="37px" OnClick="Button_Add_Oriantion_day_Click" />
                        <asp:Label ID="Label_Saveoriantation" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="3"></td>
                    <td class="auto-style49" colspan="2"></td>
                    <td class="auto-style11" colspan="2"></td>
                    <td class="auto-style11" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label_Module" runat="server" Text="المادة"></asp:Label>
                    </td>
                    <td class="auto-style23" colspan="5">
                        <asp:DropDownList ID="DropDownList_Module" runat="server" DataSourceID="SqlDataSource_Module" DataTextField="module_name_ar" DataValueField="module_id" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Text="--اختر--" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_Module" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [module_id], [module_name_ar] FROM [Module] WHERE ([module_Is_active] = @module_Is_active)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="module_Is_active" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td colspan="3" class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label_Trainer" runat="server" Text="المدرب"></asp:Label>
                    </td>
                    <td class="auto-style26" colspan="5">
                        <asp:DropDownList ID="DropDownList_Trainer" runat="server" DataSourceID="SqlDataSource_Trainer" DataTextField="t_name_ar" DataValueField="trainers_id" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Text="--اختر--" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_Trainer" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [trainers_id], [t_name_ar] FROM [Trainers] WHERE ([t_IS_Active] = @t_IS_Active)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="t_IS_Active" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td colspan="3" class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="Label_FirstDate" runat="server" Text="اليوم الاول"></asp:Label>
                    </td>
                    <td class="auto-style29" colspan="5">

                        <asp:TextBox ID="TextBox_FirstDate" runat="server"> </asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender_fd" runat="server" Enabled="True" TargetControlID="TextBox_FirstDate" Format="dd-MM-yyyy"></ajaxToolkit:CalendarExtender>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_fd" runat="server" TargetControlID="TextBox_FirstDate" FilterMode="ValidChars" ValidChars="0123456789-/:"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                    <td class="auto-style30" colspan="3"></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Label ID="Label_SecondDate" runat="server" Text="اليوم الثاني"></asp:Label>
                    </td>
                    <td class="auto-style32" colspan="5">

                        <asp:TextBox ID="TextBox_SecondDate" runat="server"> </asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender_sd" runat="server" Enabled="True" TargetControlID="TextBox_SecondDate" Format="dd-MM-yyyy"></ajaxToolkit:CalendarExtender>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender_sd" runat="server" TargetControlID="TextBox_SecondDate" FilterMode="ValidChars" ValidChars="0123456789-/:"></ajaxToolkit:FilteredTextBoxExtender>
                    </td>
                    <td colspan="3" class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style34">

                        <asp:Label ID="Label_Mor_Time" runat="server" Text="المواعيد الصباحية"></asp:Label>

                    </td>
                    <td class="auto-style35" colspan="3">
                        <asp:Label ID="Label_Mor_StartTime" runat="server" Text="من الساعة            "></asp:Label>
                        <asp:TextBox ID="TextBox_Mor_StartTime" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style36" colspan="5">
                        <asp:Label ID="Label_Mor_EndtTime" runat="server" Text="الي الساعة            "></asp:Label>
                        <asp:TextBox ID="TextBox_Mor_EndtTime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">

                        <asp:Label ID="Label_EveningTime" runat="server" Text="المواعيد المسائية"></asp:Label>

                    </td>
                    <td class="auto-style35" colspan="3">
                        <asp:Label ID="Label_Evening_StartTime" runat="server" Text="من الساعة            "></asp:Label>
                        <asp:TextBox ID="TextBox_Evening_StartTime" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style36" colspan="5">
                        <asp:Label ID="Label_Evening_EndTime" runat="server" Text="الي الساعة            "></asp:Label>
                        <asp:TextBox ID="TextBox_Evening_EndTime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="5">&nbsp;</td>
                    <td colspan="3">
                        <asp:Button ID="btn_AddToSchedule" runat="server" Text="اضافة" OnClick="btn_AddToSchedule_Click" />
                    </td>


                </tr>
                <tr>
                    <td dir="rtl" class="auto-style42" colspan="9">
                        <asp:Button ID="CheckAll" runat="server" Text="اختيار الكل" />

                        <asp:Button ID="UncheckAll" runat="server" Text="Uncheck All" />
                        <asp:GridView ID="gridService_Training_Schedule" align="rtl" runat="server" Width="740px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource_Schedule" ForeColor="#333333" GridLines="None" DataKeyNames="schedule_ID">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox_schedule" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="schedule_ID" HeaderText="schedule_ID" SortExpression="schedule_ID" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="Group_name" HeaderText="مجموعة الواتس" SortExpression="Group_name" />
                                <asp:BoundField DataField="module_name_ar" HeaderText="المديول" SortExpression="module_name_ar" />
                                <asp:BoundField DataField="t_name_ar" HeaderText="المدرب" SortExpression="t_name_ar" />
                                <asp:BoundField DataField="First_Lec_date" HeaderText="تاريخ اليوم الاول" SortExpression="First_Lec_date" />
                                <asp:BoundField DataField="Secned_Lec_date" HeaderText="تاريخ اليوم الثاني" SortExpression="Secned_Lec_date" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource_Schedule" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="training_schedule" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList_Group_Name" Name="Group_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style46">&nbsp;</td>
                    <td class="auto-style48" colspan="3"></td>
                    <td class="auto-style48" colspan="2"></td>
                </tr>
            </table>

        </div>
    </form>


</body>
</html>



