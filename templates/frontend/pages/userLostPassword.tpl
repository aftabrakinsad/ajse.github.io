{**
 * templates/frontend/pages/userLostPassword.tpl
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2000-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Password reset form.
 *
 *}
{include file="frontend/components/header.tpl" pageTitle="user.login.resetPassword"}

<style>
	.btn-primary {
		border-color: #034EA1;
		color: black;
		background-color: white;
		border-radius: 5px;
	}

	.btn-primary:hover {
		color: white;
		background-color: red;
		border-color: red;
		border-radius: 5px;
	}

	.register-button {
		border-color: #034EA1;
		color: white;
		background-color: #034EA1;
		border-radius: 5px;
	}

	.register-button:hover {
		color: black;
		background-color: white;
		border-color: #034EA1;
		border-radius: 5px;
	}

	.form-control {
		display: block;
		width: 100%;
		height: 39px;
		padding: 8px 12px;
		font-size: 15px;
		line-height: 1.4;
		color: #6f6f6f;
		background-color: #fff;
		background-image: none;
		border: 1px solid #ccc;
		border-radius: 0;
		-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
		box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
		-webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		border-radius: 5px;
	}

	.alert, .alert-info {
		background-color: red;
		color: white;
		border-color: red;
	}
</style>

<div id="main-content" class="page page_lost_password">

	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="user.login"}

	<div class="alert alert-info" role="alert">
		{translate key="user.login.resetPasswordInstructions"}
	</div>

	<form class="pkp_form lost_password" id="lostPasswordForm" action="{url page="login" op="requestResetPassword"}" method="post">
		{csrf}

		{if $error}
			<div class="alert alert-error" role="alert">
				{translate key=$error}
			</div>
		{/if}
		<div class="row">
			<div class="form-group col-md-12">
				<label for="login-email">
					{translate key="user.login.registeredEmail"}
				</label>
				<input type="email" name="email" class="form-control" id="login-email" placeholder="{translate key='user.login.registeredEmail'}" value="{$email|escape}" maxlenght="32" required>
			</div>

			<center>
				<div class="buttons col-md-12">
					<button type="submit" class="btn btn-primary">
						{translate key="user.login.resetPassword"}
					</button>

					{if !$disableUserReg}
						{capture assign="registerUrl"}{url page="user" op="register" source=$source}{/capture}
						<a class="btn btn-default register-button" href="{$registerUrl}" role="button">
							{translate key="user.login.registerNewAccount"}
						</a>
					{/if}
				</div>
			</center>
		</div>
	</form>

</div><!-- .page -->

{include file="common/frontend/footer.tpl"}
