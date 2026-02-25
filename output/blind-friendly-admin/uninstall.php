<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bastgs_settings');
delete_site_option('bastgs_settings');
delete_option('my_admin_theme_2_settings');
delete_site_option('my_admin_theme_2_settings');
delete_option('bastgs_settings[bastgs_select_field_10]');
delete_site_option('bastgs_settings[bastgs_select_field_10]');

