<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('monoedge_auth');
delete_site_option('monoedge_auth');
delete_option('monoedge_api_base_url');
delete_site_option('monoedge_api_base_url');
delete_option('monoedge_user_data');
delete_site_option('monoedge_user_data');
delete_option('monoedge_button_creator_settings');
delete_site_option('monoedge_button_creator_settings');
delete_option('monoedge_settings');
delete_site_option('monoedge_settings');
delete_option('monoedge_stores');
delete_site_option('monoedge_stores');
delete_option('monoedge_store_progress');
delete_site_option('monoedge_store_progress');
delete_option('monoedge_button_styles');
delete_site_option('monoedge_button_styles');
delete_option('monoedge_analytics_cache');
delete_site_option('monoedge_analytics_cache');
delete_option('monoedge_qr_codes');
delete_site_option('monoedge_qr_codes');

