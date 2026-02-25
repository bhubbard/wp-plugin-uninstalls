<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('satcba_animation_active');
delete_site_option('satcba_animation_active');
delete_option('satcba_animation_speed');
delete_site_option('satcba_animation_speed');
delete_option('satcba_animation_delay');
delete_site_option('satcba_animation_delay');
delete_option('satcba_box_shadow');
delete_site_option('satcba_box_shadow');
delete_option('satcba_background_color');
delete_site_option('satcba_background_color');
delete_option('satcba_text_color');
delete_site_option('satcba_text_color');

