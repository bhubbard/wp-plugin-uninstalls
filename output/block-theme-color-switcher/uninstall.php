<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_theme_color_switcher_button_text');
delete_site_option('block_theme_color_switcher_button_text');
delete_option('block_theme_color_switcher_position');
delete_site_option('block_theme_color_switcher_position');
delete_option('block_theme_color_switcher_top');
delete_site_option('block_theme_color_switcher_top');

