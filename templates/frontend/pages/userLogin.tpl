{**
 * templates/frontend/pages/userLogin.tpl
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2000-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * User login form.
 *
 *}
{include file="frontend/components/header.tpl" pageTitle="user.login"}

<style>
	.btn-primary {
		border-color: #034EA1;
		color: black;
		background-color: white;
		border-radius: 5px;
	}

	.btn-primary:hover {
		color: white;
		background-color: #034EA1;
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

</style>

<div id="main-content" class="page page_login">

	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="user.login"}

	{* A login message may be displayed if the user was redireceted to the
		login page from another request. Examples include if login is required
	   before dowloading a file. *}
	{if $loginMessage}
		<div class="alert alert-info" role="alert">
			{translate key=$loginMessage}
		</div>
	{/if}

	<form class="pkp_form login" id="login" method="post" action="{$loginUrl}">
		{csrf}
		<input type="hidden" name="source" value="{$source|strip_unsafe_html|escape}" />

		{if $error}
			<div class="alert alert-danger" role="alert">
				{translate key=$error reason=$reason}
			</div>
		{/if}

		<div class="row">
            <div class="form-group col-md-12">
    			<label for="login-username">
    				{translate key="user.username"}
    			</label>
    			<input type="text" name="username" class="form-control" id="login-username" placeholder="{translate key='user.username'}" value="{$username|escape}" maxlenght="32" required>
    		</div>

    		<div class="form-group col-md-12">
    			<label for="login-password">
    				{translate key="user.password"}
    			</label>
    			<input type="password" name="password" class="form-control" id="login-password" placeholder="{translate key='user.password'}" password="true" maxlength="32" required="$passwordRequired">
    		</div>

            <center>
				<div class="form-group col-md-12">
					<a style="color: red; text-decoration: none;" href="{url page="login" op="lostPassword"}">
						{translate key="user.login.forgotPassword"}
					</a>
				</div>

				<div class="checkbox col-md-12">
					<label>
						<input type="checkbox" name="remember" id="remember" value="1" checked="$remember"> {translate key="user.login.rememberUsernameAndPassword"}
					</label>
				</div>

				<div class="buttons col-md-12">
					<button type="submit" class="btn btn-primary">
						{translate key="user.login"}
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
