<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codingfreaks_plugin_settings');
delete_site_option('codingfreaks_plugin_settings');

// Delete Transients
delete_transient('codingfreaks_ping_notice');
delete_site_transient('codingfreaks_ping_notice');

