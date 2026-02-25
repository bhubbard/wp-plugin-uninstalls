<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfat_theme_options');
delete_site_option('mfat_theme_options');
delete_option('mfat_login_options');
delete_site_option('mfat_login_options');
delete_option('mfat_settings_options');
delete_site_option('mfat_settings_options');

// Delete Transients
delete_transient('mfat_welcome_screen_activation_redirect');
delete_site_transient('mfat_welcome_screen_activation_redirect');

