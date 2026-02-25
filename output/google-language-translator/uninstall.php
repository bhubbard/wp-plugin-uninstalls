<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googlelanguagetranslator_css');
delete_site_option('googlelanguagetranslator_css');
delete_option('glt_language_switcher_width');
delete_site_option('glt_language_switcher_width');
delete_option('glt_language_switcher_text_color');
delete_site_option('glt_language_switcher_text_color');
delete_option('glt_language_switcher_bg_color');
delete_site_option('glt_language_switcher_bg_color');
delete_option('googlelanguagetranslator_display');
delete_site_option('googlelanguagetranslator_display');
delete_option('glt_floating_widget_position');
delete_site_option('glt_floating_widget_position');
delete_option('glt_floating_widget_text_color');
delete_site_option('glt_floating_widget_text_color');
delete_option('glt_floating_widget_bg_color');
delete_site_option('glt_floating_widget_bg_color');
delete_option('googlelanguagetranslator_flags');
delete_site_option('googlelanguagetranslator_flags');
delete_option('googlelanguagetranslator_flags_alignment');
delete_site_option('googlelanguagetranslator_flags_alignment');
delete_option('googlelanguagetranslator_active');
delete_site_option('googlelanguagetranslator_active');
delete_option('googlelanguagetranslator_showbranding');
delete_site_option('googlelanguagetranslator_showbranding');
delete_option('googlelanguagetranslator_translatebox');
delete_site_option('googlelanguagetranslator_translatebox');
delete_option('googlelanguagetranslator_toolbar');
delete_site_option('googlelanguagetranslator_toolbar');
delete_option('googlelanguagetranslator_language');
delete_site_option('googlelanguagetranslator_language');
delete_option('language_display_settings');
delete_site_option('language_display_settings');
delete_option('googlelanguagetranslator_analytics');
delete_site_option('googlelanguagetranslator_analytics');
delete_option('googlelanguagetranslator_analytics_id');
delete_site_option('googlelanguagetranslator_analytics_id');
delete_option('googlelanguagetranslator_multilanguage');
delete_site_option('googlelanguagetranslator_multilanguage');
delete_option('googlelanguagetranslator_floating_widget');
delete_site_option('googlelanguagetranslator_floating_widget');
delete_option('googlelanguagetranslator_flag_size');
delete_site_option('googlelanguagetranslator_flag_size');
delete_option('googlelanguagetranslator_flags_order');
delete_site_option('googlelanguagetranslator_flags_order');
delete_option('googlelanguagetranslator_english_flag_choice');
delete_site_option('googlelanguagetranslator_english_flag_choice');
delete_option('googlelanguagetranslator_spanish_flag_choice');
delete_site_option('googlelanguagetranslator_spanish_flag_choice');
delete_option('googlelanguagetranslator_portuguese_flag_choice');
delete_site_option('googlelanguagetranslator_portuguese_flag_choice');
delete_option('googlelanguagetranslator_floating_widget_text');
delete_site_option('googlelanguagetranslator_floating_widget_text');
delete_option('googlelanguagetranslator_floating_widget_text_allow_translation');
delete_site_option('googlelanguagetranslator_floating_widget_text_allow_translation');
delete_option('googlelanguagetranslator_manage_translations');
delete_site_option('googlelanguagetranslator_manage_translations');
delete_option('flag_display_settings');
delete_site_option('flag_display_settings');
delete_option('googlelanguagetranslator_language_option');
delete_site_option('googlelanguagetranslator_language_option');
delete_option('googlelanguagetranslator_url_structure');
delete_site_option('googlelanguagetranslator_url_structure');
delete_option('googlelanguagetranslator_seo_active');
delete_site_option('googlelanguagetranslator_seo_active');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_admin_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('googlelanguagetranslator_url_translation_active');
delete_site_option('googlelanguagetranslator_url_translation_active');
delete_option('googlelanguagetranslator_hreflang_tags_active');
delete_site_option('googlelanguagetranslator_hreflang_tags_active');

