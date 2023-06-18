<?php

/**
 * @file plugins/themes/default/AJSEThemeCardsThemePlugin.inc.php
 *
 * Copyright (c) 2014-2023 Simon Fraser University Library
 * Copyright (c) 2003-2023 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class AJSEThemeCardsThemePlugin
 * @ingroup plugins_themes_AJSEThemeCards
 *
 * @brief Default theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');
class AJSEThemeCardsThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme
	 *
	 * @return null
	 */
	public function init() {

		// Register option for bootstrap themes
		$this->addOption('bootstrapTheme', 'FieldOptions', [
			'type' => 'radio',
			'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.label'),
			'description' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.description'),
			'options' => [
				/*[
					'value' => 'AJSEThemeCards',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.AJSEThemeCards'),
				],
				[
					'value' => 'cerulean',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.cerulean'),
				],
				[
					'value' => 'cleanblog',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.cleanblog'),
				],
				[
					'value' => 'cosmo',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.cosmo'),
				],
				[
					'value' => 'cyborg',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.cyborg'),
				],
				[
					'value' => 'darkly',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.darkly'),
				],
				[
					'value' => 'flatly',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.flatly'),
				],
				[
					'value' => 'journal',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.journal'),
				],
				[
					'value' => 'lumen',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.lumen'),
				],
				[
					'value' => 'paper',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.paper'),
				],
				[
					'value' => 'readable',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.readable'),
				],
				[
					'value' => 'sandstone',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.sandstone'),
				],
				[
					'value' => 'simplex',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.simplex'),
				],
				[
					'value' => 'slate',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.slate'),
				],
				[
					'value' => 'spacelab',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.spacelab'),
				],
				[
					'value' => 'superhero',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.superhero'),
				],
				[
					'value' => 'united',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.united'),
				],*/
				[
					'value' => 'yeti',
					'label' => __('plugins.themes.AJSEThemeCards.options.bootstrapTheme.yeti'),
				],
			],
		]);

		// Determine the path to the glyphicons font in Bootstrap
		$iconFontPath = Application::get()->getRequest()->getBaseUrl() . '/' . $this->getPluginPath() . '/bootstrap/fonts/';

		$bootstrapTheme = $this->getOption('bootstrapTheme');
		if (empty($bootstrapTheme) || $bootstrapTheme === 'AJSEThemeCards') {
			$this->addStyle('bootstrap', 'styles/bootstrap.less');
			$this->modifyStyle('bootstrap', ['addLessVariables' => '@icon-font-path:"' . $iconFontPath . '";']);
		} else {
			$this->addStyle('bootstrapTheme-' . $bootstrapTheme, 'styles/' . $bootstrapTheme . '.less');
			$this->modifyStyle('bootstrapTheme-' . $bootstrapTheme, ['addLessVariables' => '@icon-font-path:"' . $iconFontPath . '";']);
		}

		$locale = AppLocale::getLocale();
		if (AppLocale::getLocaleDirection($locale) === 'rtl') {
			$this->addStyle('bootstrap-rtl', 'styles/bootstrap-rtl.min.css');
		}

		// Load jQuery from a CDN or, if CDNs are disabled, from a local copy.
		$min = Config::getVar('general', 'enable_minified') ? '.min' : '';
		$request = Application::get()->getRequest();
		// Use an empty `baseUrl` argument to prevent the theme from looking for
		// the files within the theme directory
		$jquery = $request->getBaseUrl() . '/lib/pkp/lib/vendor/components/jquery/jquery' . $min . '.js';
		$jqueryUI = $request->getBaseUrl() . '/lib/pkp/lib/vendor/components/jqueryui/jquery-ui' . $min . '.js';
		$this->addScript('jQuery', $jquery, array('baseUrl' => ''));
		$this->addScript('jQueryUI', $jqueryUI, array('baseUrl' => ''));
		$this->addScript('jQueryTagIt', $request->getBaseUrl() . '/lib/pkp/js/lib/jquery/plugins/jquery.tag-it.js', array('baseUrl' => ''));

		// Load Bootstrap
		$this->addScript('bootstrap', 'bootstrap/js/bootstrap.min.js');

		// Add navigation menu areas for this theme
		$this->addMenuArea(array('primary', 'user'));
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.AJSEThemeCards.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.AJSEThemeCards.description');
	}
}
