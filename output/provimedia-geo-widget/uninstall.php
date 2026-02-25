<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geo_widget_options');
delete_site_option('geo_widget_options');
delete_option('geo_widget_db_version');
delete_site_option('geo_widget_db_version');

