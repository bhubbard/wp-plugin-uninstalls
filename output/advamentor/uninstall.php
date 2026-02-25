<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_advanced_banner');
delete_site_option('disable_advanced_banner');
delete_option('disable_advanced_cf7');
delete_site_option('disable_advanced_cf7');
delete_option('disable_advanced_countdown');
delete_site_option('disable_advanced_countdown');
delete_option('disable_advanced_counter');
delete_site_option('disable_advanced_counter');
delete_option('disable_advanced_fancy_text');
delete_site_option('disable_advanced_fancy_text');
delete_option('disable_advanced_image_slider');
delete_site_option('disable_advanced_image_slider');
delete_option('disable_advanced_logo_carousel');
delete_site_option('disable_advanced_logo_carousel');
delete_option('disable_advanced_testimonial_carousel');
delete_site_option('disable_advanced_testimonial_carousel');
delete_option('disable_advanced_flip_carousel');
delete_site_option('disable_advanced_flip_carousel');

