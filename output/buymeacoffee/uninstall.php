<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bmc_plugin_activated');
delete_site_option('bmc_plugin_activated');
delete_option('BMC_Widget_disconnect');
delete_site_option('BMC_Widget_disconnect');
delete_option('widget_buymeacoffee_widget');
delete_site_option('widget_buymeacoffee_widget');
delete_option('my_plugin_db_version');
delete_site_option('my_plugin_db_version');

