<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsi_register_settings_fields');
delete_site_option('wpsi_register_settings_fields');
delete_option('wpsi_active_plugins');
delete_site_option('wpsi_active_plugins');

