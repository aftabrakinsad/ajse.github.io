{**
 * templates/frontend/components/registrationForm.tpl
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2003-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display the basic registration form fields
 *
 * @uses $locale string Locale key to use in the affiliate field
 * @uses $firstName string First name input entry if available
 * @uses $middleName string Middle name input entry if available
 * @uses $lastName string Last name input entry if available
 * @uses $countries array List of country options
 * @uses $country string The selected country if available
 * @uses $email string Email input entry if available
 * @uses $username string Username input entry if available
 *}

 <style>
	
 	.btn-default {
		border-color: #034EA1;
		color: black;
		background-color: white;
		border-radius: 5px;
	}

	.btn-default:hover {
		color: white;
		background-color: #034EA1;
		border-radius: 5px;
	}

	.btn-primary {
		border-color: #034EA1;
		color: white;
		background-color: #034EA1;
		border-radius: 5px;
	}

	.btn-primary:hover {
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

<fieldset class="identity">
	<legend>
		{translate key="user.profile"}
	</legend>
	<div class="fields row">
		<div class="col-sm-6 col-md-6 form-group given_name">
			<label style="width:100%;">
				{translate key="user.givenName"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="text" name="givenName" id="givenName" value="{$givenName|escape}" maxlength="255" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group family_name">
			<label style="width:100%;">
				{translate key="user.familyName"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="text" name="familyName" id="familyName" value="{$familyName|escape}" maxlength="255" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group affiliation">
			<label style="width:100%;">
				{translate key="user.affiliation"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="text" name="affiliation[{$primaryLocale|escape}]" id="affiliation" value="{$affiliation.$primaryLocale|escape}" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group country">
			<label style="width:100%;">
				{translate key="common.country"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<select class="form-control" name="country" id="country" required>
					<option></option>
					{html_options options=$countries selected=$country}
				</select>
			</label>
		</div>
	</div>
</fieldset>

<fieldset class="login">
	<legend>
		{translate key="user.login"}
	</legend>
	<div class="fields row">
		<div class="col-sm-6 col-md-6 form-group email">
			<label style="width:100%;">
				{translate key="user.email"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="email" name="email" id="email" value="{$email|escape}" maxlength="90" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group username">
			<label style="width:100%;">
				{translate key="user.username"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="text" name="username" id="username" value="{$username|escape}" maxlength="32" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group password">
			<label style="width:100%;">
				{translate key="user.password"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="password" name="password" id="password" password="true" maxlength="32" required>
			</label>
		</div>
		<div class="col-sm-6 col-md-6 form-group password">
			<label style="width:100%;">
				{translate key="user.repeatPassword"}
				<span class="form-control-required">*</span>
				<span class="sr-only">{translate key="common.required"}</span>
				<input class="form-control" type="password" name="password2" id="password2" password="true" maxlength="32" required>
			</label>
		</div>
	</div>
</fieldset>