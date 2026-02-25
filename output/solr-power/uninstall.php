<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_s4wp_settings');
delete_site_option('plugin_s4wp_settings');

// Delete Transients
delete_transient('schema_check');
delete_site_transient('schema_check');

