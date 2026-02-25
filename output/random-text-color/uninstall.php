<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rbtc_enable_plugin');
delete_site_option('rbtc_enable_plugin');
delete_option('rbtc_enable_bold_color');
delete_site_option('rbtc_enable_bold_color');
delete_option('rbtc_enable_heading_gradient');
delete_site_option('rbtc_enable_heading_gradient');
delete_option('rbtc_enable_paragraph_color');
delete_site_option('rbtc_enable_paragraph_color');
delete_option('rbtc_enable_dark_mode_style');
delete_site_option('rbtc_enable_dark_mode_style');
delete_option('rbtc_custom_gradient_colors');
delete_site_option('rbtc_custom_gradient_colors');
delete_option('rbtc_max_colored_paragraphs');
delete_site_option('rbtc_max_colored_paragraphs');
delete_option('rbtc_enable_easter_egg');
delete_site_option('rbtc_enable_easter_egg');
delete_option('rbtc_easter_egg_unlocked');
delete_site_option('rbtc_easter_egg_unlocked');

