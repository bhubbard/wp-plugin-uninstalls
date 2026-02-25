<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jialistt_button_bg');
delete_site_option('jialistt_button_bg');
delete_option('jialistt_button_color');
delete_site_option('jialistt_button_color');
delete_option('jialistt_button_size');
delete_site_option('jialistt_button_size');
delete_option('jialistt_font_size');
delete_site_option('jialistt_font_size');
delete_option('jialistt_position');
delete_site_option('jialistt_position');
delete_option('jialistt_bottom_distance');
delete_site_option('jialistt_bottom_distance');
delete_option('jialistt_side_distance');
delete_site_option('jialistt_side_distance');
delete_option('jialistt_shape');
delete_site_option('jialistt_shape');

