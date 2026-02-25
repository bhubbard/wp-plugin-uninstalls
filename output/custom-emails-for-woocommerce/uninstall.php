<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_custom_emails_debug_enabled');
delete_site_option('alg_wc_custom_emails_debug_enabled');
delete_option('alg_wc_custom_emails_delete_plugin_data');
delete_site_option('alg_wc_custom_emails_delete_plugin_data');
delete_option('alg_wc_custom_emails_base_dir');
delete_site_option('alg_wc_custom_emails_base_dir');
delete_option('alg_wc_custom_emails_custom_triggers');
delete_site_option('alg_wc_custom_emails_custom_triggers');
delete_option('alg_wc_custom_emails_version');
delete_site_option('alg_wc_custom_emails_version');
delete_option('alg_wc_custom_emails_wpautop');
delete_site_option('alg_wc_custom_emails_wpautop');
delete_option('alg_wc_custom_emails_scheduler');
delete_site_option('alg_wc_custom_emails_scheduler');
delete_option('alg_wc_custom_emails_titles');
delete_site_option('alg_wc_custom_emails_titles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_custom_emails_enabled_trigger_groups');
delete_site_option('alg_wc_custom_emails_enabled_trigger_groups');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

