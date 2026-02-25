<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('media_selector_attachment_id');
delete_site_option('media_selector_attachment_id');
delete_option('scroll_enable');
delete_site_option('scroll_enable');
delete_option('scroll_duration');
delete_site_option('scroll_duration');
delete_option('scroll_offset');
delete_site_option('scroll_offset');
delete_option('scroll_position');
delete_site_option('scroll_position');
delete_option('scroll_right_margin');
delete_site_option('scroll_right_margin');
delete_option('scroll_bottom_margin');
delete_site_option('scroll_bottom_margin');
delete_option('scroll_size');
delete_site_option('scroll_size');
delete_option('scroll_button_bgcolor');
delete_site_option('scroll_button_bgcolor');
delete_option('scroll_button_color');
delete_site_option('scroll_button_color');
delete_option('scroll_text');
delete_site_option('scroll_text');
delete_option('scroll_type');
delete_site_option('scroll_type');
delete_option('scroll_image');
delete_site_option('scroll_image');

