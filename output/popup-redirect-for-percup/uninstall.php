<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('percup_bg_color');
delete_site_option('percup_bg_color');
delete_option('percup_logo');
delete_site_option('percup_logo');
delete_option('percup_heading');
delete_site_option('percup_heading');
delete_option('percup_heading_color');
delete_site_option('percup_heading_color');
delete_option('percup_font_size');
delete_site_option('percup_font_size');
delete_option('percup_font_family');
delete_site_option('percup_font_family');
delete_option('percup_text_content');
delete_site_option('percup_text_content');
delete_option('percup_content_font_size');
delete_site_option('percup_content_font_size');
delete_option('percup_content_font_family');
delete_site_option('percup_content_font_family');
delete_option('percup_subtext_color');
delete_site_option('percup_subtext_color');
delete_option('percup_button_text');
delete_site_option('percup_button_text');
delete_option('percup_button_bg_color');
delete_site_option('percup_button_bg_color');
delete_option('percup_button_text_color');
delete_site_option('percup_button_text_color');
delete_option('percup_cookie_days');
delete_site_option('percup_cookie_days');

