<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('respopcf7_theme_color');
delete_site_option('respopcf7_theme_color');
delete_option('respopcf7_autohide_delay');
delete_site_option('respopcf7_autohide_delay');
delete_option('respopcf7_show_confirm_button');
delete_site_option('respopcf7_show_confirm_button');
delete_option('respopcf7_use_backdrop');
delete_site_option('respopcf7_use_backdrop');
delete_option('respopcf7_confirm_button_text');
delete_site_option('respopcf7_confirm_button_text');
delete_option('respopcf7_use_toast');
delete_site_option('respopcf7_use_toast');
delete_option('respopcf7_position');
delete_site_option('respopcf7_position');
delete_option('respopcf7_allow_outside_click');
delete_site_option('respopcf7_allow_outside_click');
delete_option('respopcf7_allow_escape_key');
delete_site_option('respopcf7_allow_escape_key');
delete_option('respopcf7_show_close_button');
delete_site_option('respopcf7_show_close_button');

