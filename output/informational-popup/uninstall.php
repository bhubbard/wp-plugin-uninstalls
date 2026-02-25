<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pop_text_color');
delete_site_option('pop_text_color');
delete_option('pop_border_color');
delete_site_option('pop_border_color');
delete_option('pop_animate_left');
delete_site_option('pop_animate_left');
delete_option('pop_bg_color');
delete_site_option('pop_bg_color');
delete_option('pop_border_width');
delete_site_option('pop_border_width');
delete_option('pop_post_text_color');
delete_site_option('pop_post_text_color');
delete_option('pop_animation_type');
delete_site_option('pop_animation_type');
delete_option('my-theme-options');
delete_site_option('my-theme-options');

