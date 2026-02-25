<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vtrust_enable_custom_styles');
delete_site_option('vtrust_enable_custom_styles');
delete_option('vtrust_card_bg_color');
delete_site_option('vtrust_card_bg_color');
delete_option('vtrust_card_border_color');
delete_site_option('vtrust_card_border_color');
delete_option('vtrust_name_color');
delete_site_option('vtrust_name_color');
delete_option('vtrust_body_color');
delete_site_option('vtrust_body_color');
delete_option('vtrust_font_family');
delete_site_option('vtrust_font_family');
delete_option('vtrust_name_font_size');
delete_site_option('vtrust_name_font_size');
delete_option('vtrust_date_font_size');
delete_site_option('vtrust_date_font_size');
delete_option('vtrust_body_font_size');
delete_site_option('vtrust_body_font_size');

