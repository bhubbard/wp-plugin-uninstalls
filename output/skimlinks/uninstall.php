<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sl_db_version');
delete_site_option('sl_db_version');
delete_option('sl_append_disclosure_badge');
delete_site_option('sl_append_disclosure_badge');
delete_option('sl_add_disclosure_badge');
delete_site_option('sl_add_disclosure_badge');
delete_option('sl_publisher_id');
delete_site_option('sl_publisher_id');
delete_option('sl_enable_subdomain');
delete_site_option('sl_enable_subdomain');
delete_option('sl_subdomain');
delete_site_option('sl_subdomain');
delete_option('sl_enable_rss_filtering');
delete_site_option('sl_enable_rss_filtering');
delete_option('sl_footer_js_works_for');
delete_site_option('sl_footer_js_works_for');

// Delete Transients
delete_transient('sl_verify_footer_js_token');
delete_site_transient('sl_verify_footer_js_token');

