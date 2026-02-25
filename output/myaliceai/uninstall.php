<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myaliceai_plugin_status');
delete_site_option('myaliceai_plugin_status');
delete_option('myaliceai_review_notice_time');
delete_site_option('myaliceai_review_notice_time');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('myaliceai_is_needed_migration');
delete_site_option('myaliceai_is_needed_migration');
delete_option('myaliceai_wc_auth');
delete_site_option('myaliceai_wc_auth');
delete_option('myaliceai_api_data');
delete_site_option('myaliceai_api_data');
delete_option('myaliceai_settings');
delete_site_option('myaliceai_settings');
delete_option('myaliceai_customization_notice_dismiss');
delete_site_option('myaliceai_customization_notice_dismiss');

// Delete Transients
delete_transient('myaliceai_wc_api_status');
delete_site_transient('myaliceai_wc_api_status');

