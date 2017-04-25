<%@ Page Title="Log In" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" %>

<!DOCTYPE html>
<html lang="en">
<head>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=8" />--%>
    <meta charset="utf-8" />
	<title>TouchStarDev Login</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
   <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <%--<link href="Style/plugins/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <%--  <link href="Style/css/style.css" rel="stylesheet" />--%>
    <link href="Style/css/style-metro.css" rel="stylesheet" />
    <link href="Style/css/pages/login-soft.css" rel="stylesheet" />
    <script src="Style/plugins/jquery-1.10.1.min.js"></script>
</head>

<body class="login">
    <script type="text/javascript">
        $(document).ready(function () {
            $.backstretch(
                          [
                         "Style/img/bg/1.gif",
                          "Style/img/bg/2.gif",
                         "Style/img/bg/3.jpg",
                          ],
                          {
                              fade: 1000,
                              duration: 8000
                          });
        });
    </script>
<div class="logo">
		<h2 class="white">TouchStar<strong>DEV</strong></h2>
	</div>
	<!-- BEGIN LOGIN -->
	<div class="content">
        <form id="Form1" runat="server" class="form-vertical login-form">
            <asp:Label ID="lbl_Error" runat="server" Visible = "false" Text = "User might be login or Not log out properly . Please contact Administrator" ></asp:Label>
		      <asp:Login ID="ctlLogin" runat="server" EnableViewState="true" RenderOuterTable="false" 
                     DestinationPageUrl="~/index.aspx"  RememberMeSet="false"> <%--OnLoggedIn="ctlLogin_LoggedIn"--%>
			  <LayoutTemplate>  
			<h3 class="form-title">Login to your account</h3>
                    <div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
                <span>Enter any username and password.</span>
			</div>

			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
					 <asp:TextBox ID="UserName" runat="server"  AutoPostBack="true"  CssClass="form-control" autocomplete="off" placeholder="Username" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </div>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
					    <asp:TextBox ID="Password"  runat="server" AutoPostBack="false" CssClass="form-control" autocomplete="off" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </div>
				</div>
			</div>
			<!-- Example split danger button -->	
<div class="form-actions">
        <br />
        <br />
				<label class="checkbox" style="margin-left:25px !important">
				 <asp:CheckBox ID="RememberMe" value="1" runat="server" />Remember me
                </label>
      <asp:LinkButton ID="LoginButton" Class="btn green pull-right" runat="server"
        CommandName="Login" Text="Log In"  ValidationGroup="LoginUserValidationGroup" UseSubmitBehavior="False"  > Login <i class="icon-arrow-right"></i>
           </asp:LinkButton>  
</div>
		</LayoutTemplate>	
           </asp:Login>
		</form>
                  
       </div> 
	<div class="copyright">
       Here is Templete For All

	</div>
    <!-- END PAGE LEVEL SCRIPTS --> <script src="Style/plugins/backstretch/jquery.backstretch.min.js"></script>
</body>
</html>
