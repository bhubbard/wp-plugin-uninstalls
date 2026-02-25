<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_pwa_theme_color');
delete_site_option('smart_pwa_theme_color');
delete_option('smart_pwa_assets_paths');
delete_site_option('smart_pwa_assets_paths');
delete_option('smart_pwa_not_available_page');
delete_site_option('smart_pwa_not_available_page');
delete_option('smart_pwa_background_color');
delete_site_option('smart_pwa_background_color');
delete_option('smart_pwa_icon');
delete_site_option('smart_pwa_icon');

// Delete Transients
delete_transient('smart_pwa_hash');
delete_site_transient('smart_pwa_hash');

