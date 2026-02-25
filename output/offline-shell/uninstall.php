<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('offline_shell_enabled');
delete_site_option('offline_shell_enabled');
delete_option('offline_shell_debug');
delete_site_option('offline_shell_debug');
delete_option('offline_shell_race_enabled');
delete_site_option('offline_shell_race_enabled');
delete_option('offline_shell_files');
delete_site_option('offline_shell_files');
delete_option('offline_shell_version');
delete_site_option('offline_shell_version');

