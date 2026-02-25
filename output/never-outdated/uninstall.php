<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_wp_version_notifier_settings');
delete_site_option('plugin_wp_version_notifier_settings');
delete_option('plugin_wp_never_outdated_settings');
delete_site_option('plugin_wp_never_outdated_settings');

