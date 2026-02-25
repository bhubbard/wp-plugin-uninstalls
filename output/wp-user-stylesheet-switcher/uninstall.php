<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_user_stylesheet_switcher_settings');
delete_site_option('wp_user_stylesheet_switcher_settings');
delete_option('widget_wp_user_stylesheet_switcher_widgets');
delete_site_option('widget_wp_user_stylesheet_switcher_widgets');

