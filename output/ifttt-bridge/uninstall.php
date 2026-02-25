<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ifttt_bridge_options');
delete_site_option('ifttt_bridge_options');
delete_option('ifttt_bridge_log');
delete_site_option('ifttt_bridge_log');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

