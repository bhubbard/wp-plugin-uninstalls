<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beep_notifier_plugin_settings');
delete_site_option('beep_notifier_plugin_settings');

