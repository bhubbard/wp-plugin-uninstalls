<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_reel_setting_replace_gallery');
delete_site_option('wp_reel_setting_replace_gallery');
delete_option('wp_reel_setting_default_speed');
delete_site_option('wp_reel_setting_default_speed');

