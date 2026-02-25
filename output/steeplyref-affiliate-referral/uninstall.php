<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_settings_extended');
delete_site_option('st_settings_extended');
delete_option('st_settings_template');
delete_site_option('st_settings_template');
delete_option('st_settings_pg_dashboard');
delete_site_option('st_settings_pg_dashboard');

