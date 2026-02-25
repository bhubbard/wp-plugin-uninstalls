<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pitane_api_key');
delete_site_option('pitane_api_key');
delete_option('google_countries');
delete_site_option('google_countries');
delete_option('google_api_key');
delete_site_option('google_api_key');
delete_option('pitane_api_url');
delete_site_option('pitane_api_url');
delete_option('pitane_api_port');
delete_site_option('pitane_api_port');
delete_option('tariffT');
delete_site_option('tariffT');
delete_option('tariffB');
delete_site_option('tariffB');
delete_option('tariffR');
delete_site_option('tariffR');
delete_option('rei_vor_id');
delete_site_option('rei_vor_id');
delete_option('rei_id');
delete_site_option('rei_id');
delete_option('filter');
delete_site_option('filter');
delete_option('gate12_guid');
delete_site_option('gate12_guid');
delete_option('companyname');
delete_site_option('companyname');
delete_option('pitane_main_color');
delete_site_option('pitane_main_color');
delete_option('pitane_button_color');
delete_site_option('pitane_button_color');
delete_option('pitane_text_main_color');
delete_site_option('pitane_text_main_color');
delete_option('pitane_background_color');
delete_site_option('pitane_background_color');
delete_option('pitane_widget_text_color');
delete_site_option('pitane_widget_text_color');
delete_option('pitane_success_text_color');
delete_site_option('pitane_success_text_color');
delete_option('pitane_error_text_color');
delete_site_option('pitane_error_text_color');

