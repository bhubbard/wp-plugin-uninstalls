<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fmai_token');
delete_site_option('fmai_token');
delete_option('fmai_settings_updated');
delete_site_option('fmai_settings_updated');
delete_option('fmai_show_ads_txt_updated_notice');
delete_site_option('fmai_show_ads_txt_updated_notice');
delete_option('fmai_ads_txt');
delete_site_option('fmai_ads_txt');
delete_option('fmai_exiting_ads_txt');
delete_site_option('fmai_exiting_ads_txt');
delete_option('fmai_analytics_enabled');
delete_site_option('fmai_analytics_enabled');
delete_option('fmai_analytics_code');
delete_site_option('fmai_analytics_code');
delete_option('fmai_push_enabled');
delete_site_option('fmai_push_enabled');

