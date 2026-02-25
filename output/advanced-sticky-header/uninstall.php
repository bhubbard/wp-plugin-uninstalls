<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ash_wp_header_animate');
delete_site_option('ash_wp_header_animate');
delete_option('ash_wp_header_animation_type');
delete_site_option('ash_wp_header_animation_type');
delete_option('ash_wp_header_full_width');
delete_site_option('ash_wp_header_full_width');
delete_option('ash_wp_header_class');
delete_site_option('ash_wp_header_class');
delete_option('ash_wp_header_shadow');
delete_site_option('ash_wp_header_shadow');
delete_option('ash_wp_header_sticky_already');
delete_site_option('ash_wp_header_sticky_already');

