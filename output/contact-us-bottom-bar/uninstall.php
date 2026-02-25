<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contact_us_hotline_number');
delete_site_option('contact_us_hotline_number');
delete_option('contact_us_facebook_messenger_link');
delete_site_option('contact_us_facebook_messenger_link');
delete_option('contact_us_zalo_number');
delete_site_option('contact_us_zalo_number');
delete_option('contact_us_google_map_link');
delete_site_option('contact_us_google_map_link');

