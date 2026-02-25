<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swaptify_property_key');
delete_site_option('swaptify_property_key');
delete_option('swaptify_account_token');
delete_site_option('swaptify_account_token');
delete_option('swaptify_enabled');
delete_site_option('swaptify_enabled');
delete_option('swaptify_version');
delete_site_option('swaptify_version');

