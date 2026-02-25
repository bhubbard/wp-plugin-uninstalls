<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zephyr_admin_theme_settings');
delete_site_option('zephyr_admin_theme_settings');
delete_option('zat_custom_themes');
delete_site_option('zat_custom_themes');

