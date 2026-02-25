<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pg_plugin_genius_active');
delete_site_option('pg_plugin_genius_active');
delete_option('pg_my_genius_active_plugins');
delete_site_option('pg_my_genius_active_plugins');
delete_option('pg_old_active_plugins');
delete_site_option('pg_old_active_plugins');

