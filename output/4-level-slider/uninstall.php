<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fls_background_color');
delete_site_option('fls_background_color');
delete_option('fls_text_color');
delete_site_option('fls_text_color');
delete_option('fls_circle_color');
delete_site_option('fls_circle_color');
delete_option('fls_circle_active_color');
delete_site_option('fls_circle_active_color');
delete_option('fls_slide_1_title');
delete_site_option('fls_slide_1_title');
delete_option('flsslider_one_1_link');
delete_site_option('flsslider_one_1_link');
delete_option('flsslider_one_1_img');
delete_site_option('flsslider_one_1_img');
delete_option('fls_slide_2_title');
delete_site_option('fls_slide_2_title');
delete_option('flsslider_one_2_link');
delete_site_option('flsslider_one_2_link');
delete_option('flsslider_one_2_img');
delete_site_option('flsslider_one_2_img');
delete_option('fls_slide_3_title');
delete_site_option('fls_slide_3_title');
delete_option('flsslider_one_3_link');
delete_site_option('flsslider_one_3_link');
delete_option('flsslider_one_3_img');
delete_site_option('flsslider_one_3_img');
delete_option('fls_slide_4_title');
delete_site_option('fls_slide_4_title');
delete_option('flsslider_one_4_link');
delete_site_option('flsslider_one_4_link');
delete_option('flsslider_one_4_img');
delete_site_option('flsslider_one_4_img');

