<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('akmsich_activate');
delete_site_option('akmsich_activate');
delete_option('akmsich_theme_color');
delete_site_option('akmsich_theme_color');
delete_option('akmsich_numbers');
delete_site_option('akmsich_numbers');
delete_option('akmsich_chat_heading');
delete_site_option('akmsich_chat_heading');
delete_option('akmsich_chat_sub_heading');
delete_site_option('akmsich_chat_sub_heading');
delete_option('akmsich_label');
delete_site_option('akmsich_label');
delete_option('akmsich_fixed_button_label');
delete_site_option('akmsich_fixed_button_label');

