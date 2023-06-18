{**
 * templates/frontend/objects/issue_toc.tpl
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2003-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief View of an Issue which displays a full table of contents.
 *
 * @uses $issue Issue The issue
 * @uses $issueTitle string Title of the issue. May be empty
 * @uses $issueSeries string Vol/No/Year string for the issue
 * @uses $issueGalleys array Galleys for the entire issue
 * @uses $hasAccess bool Can this user access galleys for this context?
 * @uses $showGalleyLinks bool Show galley links to users without access?
 *}
 
<div class="issue-toc">
	{* Articles *}
	<div class="sections">
		{foreach name=sections from=$publishedSubmissions item=section}
			<section class="section">
				{if $section.articles}
					{if $section.title}
						<div class="page-header">
							<h2>
								<small>{$section.title|escape}</small>
							</h2>
						</div>
					{/if}
					<div class="media-list">
						{foreach from=$section.articles item=article}
							{include file="frontend/objects/article_summary.tpl"}
						{/foreach}
					</div>
				{/if}
			</section>
		{/foreach}
	</div><!-- .sections -->
</div><!-- .issue-toc -->
