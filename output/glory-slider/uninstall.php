<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glory_slider_images');
delete_site_option('glory_slider_images');
delete_option('glory_slider_speed');
delete_site_option('glory_slider_speed');
delete_option('glory_slider_interval');
delete_site_option('glory_slider_interval');
delete_option('glory_slider_transition_effect');
delete_site_option('glory_slider_transition_effect');
delete_option('glory_slider_duration');
delete_site_option('glory_slider_duration');
delete_option('glory_slider_layout');
delete_site_option('glory_slider_layout');
delete_option('glory_slider_aspect_ratio');
delete_site_option('glory_slider_aspect_ratio');
delete_option('glory_slider_custom_width');
delete_site_option('glory_slider_custom_width');
delete_option('glory_slider_custom_height');
delete_site_option('glory_slider_custom_height');
delete_option('glory_slider_show_indicators');
delete_site_option('glory_slider_show_indicators');
delete_option('glory_slider_image_fit');
delete_site_option('glory_slider_image_fit');

