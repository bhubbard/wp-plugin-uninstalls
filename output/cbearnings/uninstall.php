<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_options_cb');
delete_site_option('plugin_options_cb');
delete_option('cbearnings_db_version');
delete_site_option('cbearnings_db_version');

