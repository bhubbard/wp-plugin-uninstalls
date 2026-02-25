<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('e2wpms_settings');
delete_site_option('e2wpms_settings');
delete_option('e2wpms_error_log');
delete_site_option('e2wpms_error_log');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('e2wpms_upgrade_data');
delete_site_transient('e2wpms_upgrade_data');
delete_transient('e2wpms_licence_response');
delete_site_transient('e2wpms_licence_response');
delete_transient('e2wpms_temporarily_disable_ssl');
delete_site_transient('e2wpms_temporarily_disable_ssl');

