<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Saleassist');
delete_site_option('Activated_Saleassist');
delete_option('saleassist_api_key');
delete_site_option('saleassist_api_key');
delete_option('saleassist_secret_key');
delete_site_option('saleassist_secret_key');
delete_option('saleassist_client_id');
delete_site_option('saleassist_client_id');
delete_option('saleassist_alert_code');
delete_site_option('saleassist_alert_code');
delete_option('saleassist_alert_msg');
delete_site_option('saleassist_alert_msg');
delete_option('saleassist_page_enable');
delete_site_option('saleassist_page_enable');
delete_option('saleassist_post_enable');
delete_site_option('saleassist_post_enable');
delete_option('saleassist_data');
delete_site_option('saleassist_data');
delete_option('widget_saleassist_widget');
delete_site_option('widget_saleassist_widget');
delete_option('saleassist_db_version');
delete_site_option('saleassist_db_version');

