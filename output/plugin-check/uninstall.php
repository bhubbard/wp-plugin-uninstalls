<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_check_ai_credentials');
delete_site_option('plugin_check_ai_credentials');

// Delete Transients
delete_transient('wp_plugin_check_latest_version_info');
delete_site_transient('wp_plugin_check_latest_version_info');

