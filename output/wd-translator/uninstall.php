<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wd_translator_enabled_languages');
delete_site_option('wd_translator_enabled_languages');
delete_option('wd_translator_translation_provider');
delete_site_option('wd_translator_translation_provider');
delete_option('wd_translator_enabled');
delete_site_option('wd_translator_enabled');
delete_option('wd_translator_google_api_key');
delete_site_option('wd_translator_google_api_key');
delete_option('wd_translator_openai_api_key');
delete_site_option('wd_translator_openai_api_key');
delete_option('wd_translator_openai_model');
delete_site_option('wd_translator_openai_model');
delete_option('wd_translator_source_language');
delete_site_option('wd_translator_source_language');
delete_option('wd_translator_widget_style');
delete_site_option('wd_translator_widget_style');
delete_option('wd_translator_widget_position');
delete_site_option('wd_translator_widget_position');
delete_option('wd_translator_show_flags');
delete_site_option('wd_translator_show_flags');
delete_option('wd_translator_language_display');
delete_site_option('wd_translator_language_display');
delete_option('wd_translator_font_size');
delete_site_option('wd_translator_font_size');
delete_option('wd_translator_border_radius');
delete_site_option('wd_translator_border_radius');
delete_option('wd_translator_shadow');
delete_site_option('wd_translator_shadow');
delete_option('wd_translator_bg_color');
delete_site_option('wd_translator_bg_color');
delete_option('wd_translator_text_color');
delete_site_option('wd_translator_text_color');
delete_option('wd_translator_border_color');
delete_site_option('wd_translator_border_color');
delete_option('wd_translator_hover_bg_color');
delete_site_option('wd_translator_hover_bg_color');
delete_option('wd_translator_active_bg_color');
delete_site_option('wd_translator_active_bg_color');
delete_option('wd_translator_cache_enabled');
delete_site_option('wd_translator_cache_enabled');
delete_option('wd_translator_cache_ttl');
delete_site_option('wd_translator_cache_ttl');
delete_option('wd_translator_db_version');
delete_site_option('wd_translator_db_version');
delete_option('wd_translator_language_customizations');
delete_site_option('wd_translator_language_customizations');

