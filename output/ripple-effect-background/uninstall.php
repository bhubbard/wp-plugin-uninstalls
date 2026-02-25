<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ripple_effect-enable_front_page');
delete_site_option('ripple_effect-enable_front_page');
delete_option('ripple_effect-enable_blog_page');
delete_site_option('ripple_effect-enable_blog_page');
delete_option('animated_text');
delete_site_option('animated_text');
delete_option('first_text');
delete_site_option('first_text');
delete_option('second_text');
delete_site_option('second_text');
delete_option('select_img_ripple_effect');
delete_site_option('select_img_ripple_effect');
delete_option('btn1_label');
delete_site_option('btn1_label');
delete_option('btn1_link');
delete_site_option('btn1_link');
delete_option('btn2_label');
delete_site_option('btn2_label');
delete_option('btn2_link');
delete_site_option('btn2_link');

