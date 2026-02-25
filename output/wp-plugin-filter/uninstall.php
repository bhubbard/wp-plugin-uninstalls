<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpf_plugins_to_hide');
delete_site_option('wpf_plugins_to_hide');
delete_option('wpf_hidden_tab_position');
delete_site_option('wpf_hidden_tab_position');
delete_option('wpf_hide_unused_plugin_status');
delete_site_option('wpf_hide_unused_plugin_status');

