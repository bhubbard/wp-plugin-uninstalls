<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deepl_default_locale');
delete_site_option('deepl_default_locale');
delete_option('wpdeepl_api_key');
delete_site_option('wpdeepl_api_key');
delete_option('wpdeepl_api_server');
delete_site_option('wpdeepl_api_server');
delete_option('wpdeepl_glossaries');
delete_site_option('wpdeepl_glossaries');
delete_option('wpdeepl_log_level');
delete_site_option('wpdeepl_log_level');
delete_option('wpdeepl_metabox_post_types');
delete_site_option('wpdeepl_metabox_post_types');
delete_option('wpdeepl_pro_post_types');
delete_site_option('wpdeepl_pro_post_types');
delete_option('wpdeepl_metabox_behaviour');
delete_site_option('wpdeepl_metabox_behaviour');
delete_option('wpdeepl_default_language');
delete_site_option('wpdeepl_default_language');
delete_option('wpdeepl_displayed_languages');
delete_site_option('wpdeepl_displayed_languages');
delete_option('wpdeepl_metabox_context');
delete_site_option('wpdeepl_metabox_context');
delete_option('wpdeepl_metabox_priority');
delete_site_option('wpdeepl_metabox_priority');
delete_option('wpdeepl_plugin_installed');
delete_site_option('wpdeepl_plugin_installed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpdeepl_formality_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpdeepl_default_formality');
delete_site_option('wpdeepl_default_formality');
delete_option('wpdeepl_contents_to_translate');
delete_site_option('wpdeepl_contents_to_translate');
delete_option('wpdeepl_target_locales');
delete_site_option('wpdeepl_target_locales');
delete_option('wpdeepl_bulk_target_locales');
delete_site_option('wpdeepl_bulk_target_locales');
delete_option('deepl_plugin_installed');
delete_site_option('deepl_plugin_installed');
delete_option('wpdeepl_allow_front_end');
delete_site_option('wpdeepl_allow_front_end');

