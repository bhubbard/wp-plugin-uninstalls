<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcty_thankyou_page_header');
delete_site_option('wcty_thankyou_page_header');
delete_option('wcty_thankyou_page_heading');
delete_site_option('wcty_thankyou_page_heading');
delete_option('wcty_thankyou_page_heading_color_code');
delete_site_option('wcty_thankyou_page_heading_color_code');
delete_option('wcty_thankyou_page_font_style');
delete_site_option('wcty_thankyou_page_font_style');
delete_option('upload_setting_image');
delete_site_option('upload_setting_image');
delete_option('wcty_thankyou_page_id');
delete_site_option('wcty_thankyou_page_id');
delete_option('wcty_thankyou_page_enable');
delete_site_option('wcty_thankyou_page_enable');
delete_option('logo-file');
delete_site_option('logo-file');

