<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky_ad_lightweight_auto_hide_delay');
delete_site_option('sticky_ad_lightweight_auto_hide_delay');
delete_option('sticky_ad_lightweight_schedule_start');
delete_site_option('sticky_ad_lightweight_schedule_start');
delete_option('sticky_ad_lightweight_schedule_end');
delete_site_option('sticky_ad_lightweight_schedule_end');
delete_option('sticky_ad_lightweight_close_button_type');
delete_site_option('sticky_ad_lightweight_close_button_type');
delete_option('sticky_ad_lightweight_close_button_image');
delete_site_option('sticky_ad_lightweight_close_button_image');
delete_option('sticky_ad_lightweight_close_button_text');
delete_site_option('sticky_ad_lightweight_close_button_text');
delete_option('sticky_ad_lightweight_close_button_svg');
delete_site_option('sticky_ad_lightweight_close_button_svg');
delete_option('sticky_ad_lightweight_display_mobile');
delete_site_option('sticky_ad_lightweight_display_mobile');
delete_option('sticky_ad_lightweight_display_desktop');
delete_site_option('sticky_ad_lightweight_display_desktop');
delete_option('sticky_ad_lightweight_ad_code');
delete_site_option('sticky_ad_lightweight_ad_code');
delete_option('sticky_ad_lightweight_display_top');
delete_site_option('sticky_ad_lightweight_display_top');
delete_option('sticky_ad_lightweight_display_bottom');
delete_site_option('sticky_ad_lightweight_display_bottom');
delete_option('sticky_ad_lightweight_background_color');
delete_site_option('sticky_ad_lightweight_background_color');

