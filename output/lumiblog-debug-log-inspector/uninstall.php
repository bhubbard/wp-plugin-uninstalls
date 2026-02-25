<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_log_inspector_plugins');
delete_site_option('debug_log_inspector_plugins');
delete_option('debug_log_inspector_settings');
delete_site_option('debug_log_inspector_settings');

// Delete Transients
delete_transient('debug_log_inspector_notice');
delete_site_transient('debug_log_inspector_notice');

