{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2003-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	<style>
		.map {
			width: 120%;
		}

		.mapframe {
			width: 110%;
			height: 167px;
			frameborder: 0;
			marginheight: 0;
			marginwidth: 0;
		}

		a .fa, .fa-brands {
			color: white;
			padding: 10px;
			font-size: 20px;
			text-align: center;
			text-decoration: none;
			margin: 5px 2px;
		}

		a .fa:hover {
			background-color: #034EA1 !important;
			border-radius: 10px;
			color: white;
		}

		a .fa-brands:hover {
			background-color: #034EA1 !important;
			border-radius: 10px;
			color: white;
		}

		footer[role="contentinfo"] {
            background: #222222;
            padding: 2em;
            margin-top: 10px!important;
            color: #fff!important;
        }
        footer[role="contentinfo"] a{
            color:#fff!important;
        }

		.block-slider-side {
			box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
		}

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

		.current_issue {
			margin-top: -40px;
		}

	</style>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/300b598ed3.js" crossorigin="anonymous"></script>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-4 col-md-3" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				<div class="pkp_block block-slider-side">
			        <div class="content">
    			        <center>
                            {* Latest issue *}
							{if $issue}
							<section class="current_issue">
								<header class="page-header">
									<h2>
										{translate key="journal.currentIssue"}
									</h2>
								</header>
								<p class="current_issue_title lead">
									{$issue->getIssueIdentification()|strip_unsafe_html}
								</p>
									{*{include file="frontend/objects/issue_toc.tpl"}*}
									{include file="frontend/objects/c_issue.tpl"}
								{*<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="btn btn-primary read-more">
									{translate key="journal.viewAllIssues"}
									<span class="glyphicon glyphicon-chevron-right"></span>
								</a>*}
							</section>
						{/if}
                        </center>
                    </div>
			    </div>

			    <div class="pkp_block block-slider-side">
			        <div class="content">
    			        <center>
                            <div class="journal_img">
								<a href="https://www.scimagojr.com/journalsearch.php?q=21101021224&tip=sid&exact=no" target="_blank">
                                	<img  src="{$baseUrl}/plugins/themes/AJSEThemeCards/Image/ajse-conf-thumb/journal_img.png" style="max-width: 150px;">
								</a>
                            </div>
							<h4><b>Scimago Journal & Country Rank</b></h4>
                			<p><b>ISSN - 16083679, 25204890</b></p>
                        </center>
                    </div>
			    </div>

			    <div class="pkp_block block-slider-side">
			        <div class="content">
    			        <center>
                            <div class="journal_img">
								<a href="https://www.scopus.com/sourceid/21101021224" target="_blank">
                                	<img  src="{$baseUrl}/plugins/themes/AJSEThemeCards/Image/ajse-conf-thumb/scopus.png" style="max-width: 150px;">
								</a>
							</div>
							<h5>AJSE has been accepted for <a href="https://www.scopus.com/sourceid/21101021224" target="_blank">SCOPUS indexing</a> from 2018 and onwards issues.</h5>
							<p class="scorix">Current Acceptance Rate: 20%</p>
							<p class="scorix">CiteScore (2020): 0.2</p>
							<p class="scorix">CiteScore (2021): 0.3</p>
							<p class="scorix">CiteScore (2022): 0.5</p>
							<p><b>ISSN:1608-3679 <br> E-ISSN:2520-4890</b></p>
                        </center>
                    </div>
			    </div>
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}

	</div><!-- pkp_structure_content -->

	<footer class="footer" role="contentinfo">

		<div class="container">

			<div class="row">
				{if $pageFooter}
				<div class="col-sm-12 col-md-12">
					{$pageFooter}
				</div>
				{/if}
			</div> <!-- .row -->
		</div><!-- .container -->
	</footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
