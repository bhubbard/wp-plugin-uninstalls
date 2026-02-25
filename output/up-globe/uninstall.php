<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('up_globe_uuid');
delete_site_option('up_globe_uuid');
delete_option('up_globe_api_url');
delete_site_option('up_globe_api_url');
delete_option('up_globe_parent_uuid');
delete_site_option('up_globe_parent_uuid');
delete_option('up_globe_last_registration_result');
delete_site_option('up_globe_last_registration_result');

