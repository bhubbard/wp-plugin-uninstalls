<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('darkmeta_dark_mode_enabled');
delete_site_option('darkmeta_dark_mode_enabled');
delete_option('darkmeta_dark_mode_background_color');
delete_site_option('darkmeta_dark_mode_background_color');
delete_option('darkmeta_dark_mode_text_color');
delete_site_option('darkmeta_dark_mode_text_color');
delete_option('darkmeta_dark_mode_icon_light');
delete_site_option('darkmeta_dark_mode_icon_light');
delete_option('darkmeta_dark_mode_icon_dark');
delete_site_option('darkmeta_dark_mode_icon_dark');

