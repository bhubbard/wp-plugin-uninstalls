<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ad_menu_settings_option');
delete_site_option('ad_menu_settings_option');
delete_option('ad_menu_settings_toggle');
delete_site_option('ad_menu_settings_toggle');

