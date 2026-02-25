<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_chimp_lists_init');
delete_site_option('wp_chimp_lists_init');
delete_option('wp_chimp_lists_db_upgraded');
delete_site_option('wp_chimp_lists_db_upgraded');
delete_option('wp_chimp_lists_total_items');
delete_site_option('wp_chimp_lists_total_items');
delete_option('wp_chimp_api_key_status');
delete_site_option('wp_chimp_api_key_status');
delete_option('wp_chimp_lists_db_version');
delete_site_option('wp_chimp_lists_db_version');
delete_option('wp_chimp_settings_mailchimp');
delete_site_option('wp_chimp_settings_mailchimp');
delete_option('wp_chimp_default_list');
delete_site_option('wp_chimp_default_list');
delete_option('wp_chimp_settings_advanced_lists');
delete_site_option('wp_chimp_settings_advanced_lists');

