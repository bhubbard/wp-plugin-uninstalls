<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zooza_api_key');
delete_site_option('zooza_api_key');
delete_option('zooza_client_secret');
delete_site_option('zooza_client_secret');
delete_option('zooza_api_url');
delete_site_option('zooza_api_url');
delete_option('zooza_registration_page_id');
delete_site_option('zooza_registration_page_id');
delete_option('zooza_profile_page_id');
delete_site_option('zooza_profile_page_id');
delete_option('zooza_calendar_page_id');
delete_site_option('zooza_calendar_page_id');
delete_option('zooza_video_page_id');
delete_site_option('zooza_video_page_id');
delete_option('zooza_checkout_page_id');
delete_site_option('zooza_checkout_page_id');
delete_option('zooza_map_page_id');
delete_site_option('zooza_map_page_id');
delete_option('zooza_calendar_map_id');
delete_site_option('zooza_calendar_map_id');

