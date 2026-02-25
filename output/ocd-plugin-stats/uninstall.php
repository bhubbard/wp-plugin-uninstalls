<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');

// Delete Transients
delete_transient('ocd_plugins_table');
delete_site_transient('ocd_plugins_table');

