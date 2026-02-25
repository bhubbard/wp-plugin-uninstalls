<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_shield_enabled');
delete_site_option('wp_shield_enabled');
delete_option('wp_shield_username');
delete_site_option('wp_shield_username');
delete_option('wp_shield_password');
delete_site_option('wp_shield_password');

