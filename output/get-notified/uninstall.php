<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gnt_hook_settings');
delete_site_option('gnt_hook_settings');
delete_option('gnt_integration_settings');
delete_site_option('gnt_integration_settings');
delete_option('gnt_settings');
delete_site_option('gnt_settings');

