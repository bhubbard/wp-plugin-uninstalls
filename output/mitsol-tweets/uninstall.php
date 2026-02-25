<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ms_twwall_plugin_general_settings');
delete_site_option('ms_twwall_plugin_general_settings');
delete_option('ms_twwall_plugin_postlayout_settings');
delete_site_option('ms_twwall_plugin_postlayout_settings');
delete_option('ms_twwall_plugin_color_settings');
delete_site_option('ms_twwall_plugin_color_settings');

