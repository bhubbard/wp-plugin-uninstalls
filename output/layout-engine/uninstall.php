<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('le_layout_settings');
delete_site_option('le_layout_settings');
delete_option('le_layout_settings_backup');
delete_site_option('le_layout_settings_backup');
delete_option('layout_manager_sidebars');
delete_site_option('layout_manager_sidebars');
delete_option('layout_engine_layout_settings');
delete_site_option('layout_engine_layout_settings');
delete_option('layout_manager_theme_options');
delete_site_option('layout_manager_theme_options');

