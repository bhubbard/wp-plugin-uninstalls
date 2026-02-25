<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('primail_api_debug_enabled');
delete_site_option('primail_api_debug_enabled');
delete_option('primail_api_test_key');
delete_site_option('primail_api_test_key');
delete_option('primail_api_key');
delete_site_option('primail_api_key');
delete_option('primail_default_from_name');
delete_site_option('primail_default_from_name');
delete_option('primail_default_from_email');
delete_site_option('primail_default_from_email');

