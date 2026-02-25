<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_remote_settings');
delete_site_option('rs_remote_settings');
delete_option('rs_remote_db_version');
delete_site_option('rs_remote_db_version');
delete_option('rs_settings');
delete_site_option('rs_settings');
delete_option('widget_retreat_site_programs_option');
delete_site_option('widget_retreat_site_programs_option');

