<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackbee_application_password');
delete_site_option('trackbee_application_password');
delete_option('trackbee_site_url');
delete_site_option('trackbee_site_url');
delete_option('trackbee_pixel_api_key');
delete_site_option('trackbee_pixel_api_key');
delete_option('trackbee_api_key');
delete_site_option('trackbee_api_key');

// Delete Transients
delete_transient('trackbee_error');
delete_site_transient('trackbee_error');
delete_transient('trackbee_tech_error');
delete_site_transient('trackbee_tech_error');

