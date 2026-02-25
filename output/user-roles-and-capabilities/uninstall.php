<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solvease_wprc_plugin_version');
delete_site_option('solvease_wprc_plugin_version');
delete_option('solvease_wp_rc_caps');
delete_site_option('solvease_wp_rc_caps');
delete_option('wp_user_roles');
delete_site_option('wp_user_roles');

