{* Additional Homepage Content *}
{if $additionalHomeContent}
<div class="col-xs-12  col-sm-12 col-md-12">
	<section class="additional_content">
		{$additionalHomeContent}
	</section>
</div>
{/if}
<style>


</style>
{capture assign="homeUrl"}
	{url page="index" router=$smarty.const.ROUTE_PAGE}
{/capture}
{$currentUrl = Application::getRequest()->getCompleteUrl()}
{capture assign="home_check"}{basename(dirname($homeUrl))}/index{/capture}
{capture assign="current_check"}{basename(dirname($currentUrl))}/{basename($currentUrl)}{/capture}
{capture assign="current_check1"}{basename($currentUrl)}/index{/capture}
{if $home_check===$current_check || $home_check===$current_check1}
<div class="col-xs-12  col-sm-12 col-md-12">
	<section class="journal_gallery">
	    <div>
	        {call_hook name="journal_gallery_home"}
	    </div>
	</section>
</div>
{/if}