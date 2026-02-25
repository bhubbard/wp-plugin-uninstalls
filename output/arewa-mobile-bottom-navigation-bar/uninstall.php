<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arewa_mbn_settings');
delete_site_option('arewa_mbn_settings');
delete_option('arewa_mbn_buttons');
delete_site_option('arewa_mbn_buttons');
delete_option('arewa_mbn_submenus');
delete_site_option('arewa_mbn_submenus');
delete_option('arewa_mbn_visibility_cache_version');
delete_site_option('arewa_mbn_visibility_cache_version');
delete_option('arewa_mbn_settings_backup');
delete_site_option('arewa_mbn_settings_backup');
delete_option('arewa_mbn_buttons_backup');
delete_site_option('arewa_mbn_buttons_backup');
delete_option('arewa_mbn_submenus_backup');
delete_site_option('arewa_mbn_submenus_backup');
delete_option('arewa_mbn_settings_backup_time');
delete_site_option('arewa_mbn_settings_backup_time');
delete_option('arewa_mbn_buttons_backup_time');
delete_site_option('arewa_mbn_buttons_backup_time');
delete_option('arewa_mbn_submenus_backup_time');
delete_site_option('arewa_mbn_submenus_backup_time');

