<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbug_settings');
delete_site_option('dbug_settings');
delete_option('dbug_error_level');
delete_site_option('dbug_error_level');
delete_option('dbug_log_filesize');
delete_site_option('dbug_log_filesize');
delete_option('dbug_log_path');
delete_site_option('dbug_log_path');
delete_option('dbug_logging');
delete_site_option('dbug_logging');

