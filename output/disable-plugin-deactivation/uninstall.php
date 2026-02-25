<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_plugin_deactivation');
delete_site_option('disable_plugin_deactivation');
delete_option('disable_plugin_activation');
delete_site_option('disable_plugin_activation');
delete_option('disable_plugin_deletion');
delete_site_option('disable_plugin_deletion');
delete_option('disable_plugin_update');
delete_site_option('disable_plugin_update');

