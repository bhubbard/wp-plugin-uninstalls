<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hw-monitor_version');
delete_site_option('hw-monitor_version');
delete_option('hw-monitor_options');
delete_site_option('hw-monitor_options');

