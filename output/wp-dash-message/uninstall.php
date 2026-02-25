<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_dash_message');
delete_site_option('wp_dash_message');
delete_option('wp_dash_message_network');
delete_site_option('wp_dash_message_network');
delete_option('wp_remove_site_widgets');
delete_site_option('wp_remove_site_widgets');
delete_option('wp_remove_network_widgets');
delete_site_option('wp_remove_network_widgets');
delete_option('wp_remove_site_widgets_N');
delete_site_option('wp_remove_site_widgets_N');
delete_option('wp_remove_global_widgets');
delete_site_option('wp_remove_global_widgets');

