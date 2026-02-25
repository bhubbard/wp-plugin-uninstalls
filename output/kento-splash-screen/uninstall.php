<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kento_splash_screen_demo');
delete_site_option('kento_splash_screen_demo');
delete_option('kento_splash_screen_bg_color');
delete_site_option('kento_splash_screen_bg_color');
delete_option('kento_splash_screen_bg_img');
delete_site_option('kento_splash_screen_bg_img');
delete_option('kento_splash_screen_border_size');
delete_site_option('kento_splash_screen_border_size');
delete_option('kento_splash_screen_border_color');
delete_site_option('kento_splash_screen_border_color');
delete_option('kento_splash_screen_content');
delete_site_option('kento_splash_screen_content');
delete_option('kento_splash_screen_width');
delete_site_option('kento_splash_screen_width');
delete_option('kento_splash_screen_height');
delete_site_option('kento_splash_screen_height');
delete_option('kento_splash_screen_left');
delete_site_option('kento_splash_screen_left');

