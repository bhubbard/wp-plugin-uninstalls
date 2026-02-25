<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('softinn_hotel_id');
delete_site_option('softinn_hotel_id');
delete_option('softinn_theme_color');
delete_site_option('softinn_theme_color');
delete_option('softinn_theme_color_temp');
delete_site_option('softinn_theme_color_temp');
delete_option('softinn_admin_nonce');
delete_site_option('softinn_admin_nonce');

