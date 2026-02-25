<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('info_email');
delete_site_option('info_email');
delete_option('info_phone');
delete_site_option('info_phone');
delete_option('info_clock');
delete_site_option('info_clock');
delete_option('add_menu_to_replace');
delete_site_option('add_menu_to_replace');
delete_option('pixel_width');
delete_site_option('pixel_width');
delete_option('menu_position');
delete_site_option('menu_position');
delete_option('menu_label');
delete_site_option('menu_label');

