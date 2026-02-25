<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tera_tips_enable_button');
delete_site_option('tera_tips_enable_button');
delete_option('tera_tips_max_amount');
delete_site_option('tera_tips_max_amount');
delete_option('tera_tips_icon');
delete_site_option('tera_tips_icon');
delete_option('tera_tips_commission');
delete_site_option('tera_tips_commission');
delete_option('tera_tips_show_summary');
delete_site_option('tera_tips_show_summary');
delete_option('tera_tips_button_bg');
delete_site_option('tera_tips_button_bg');
delete_option('tera_tips_button_text_color');
delete_site_option('tera_tips_button_text_color');
delete_option('tera_tips_button_text');
delete_site_option('tera_tips_button_text');
delete_option('tera_tips_warning_text');
delete_site_option('tera_tips_warning_text');

