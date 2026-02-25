<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esse_settings');
delete_site_option('esse_settings');
delete_option('esse_modules');
delete_site_option('esse_modules');
delete_option('esse_progress_bar_settings');
delete_site_option('esse_progress_bar_settings');
delete_option('esse_scroll_top_settings');
delete_site_option('esse_scroll_top_settings');
delete_option('esse_scroll_bar_settings');
delete_site_option('esse_scroll_bar_settings');
delete_option('esse_version');
delete_site_option('esse_version');
delete_option('esse_installed');
delete_site_option('esse_installed');
delete_option('esse_flash_notices');
delete_site_option('esse_flash_notices');

