<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('celia_meta_mappings');
delete_site_option('celia_meta_mappings');
delete_option('celia_admin_notices');
delete_site_option('celia_admin_notices');
delete_option('celia_verification_code');
delete_site_option('celia_verification_code');
delete_option('celia_api_pin');
delete_site_option('celia_api_pin');

