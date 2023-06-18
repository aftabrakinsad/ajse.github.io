<nav class="cmp_breadcrumbs" role="navigation" aria-label="{translate key="navigation.breadcrumbLabel"}">
	<ol class="breadcrumb">
		<li>
			<a href="{url page="index" router=$smarty.const.ROUTE_PAGE}">
				{translate key="common.homepageNavigationLabel"}
			</a>
		</li>
		<li class="active">
			{if "Aims & Scope"}
				{*{translate key=$currentTitleKey}*}
				AIMS & SCOPE
			{else if "Open Access Statement"}
				OPEN ACCESS STATEMENT
			{else}
				{$currentTitle|escape}
			{/if}
		</li>
	</ol>
</nav>