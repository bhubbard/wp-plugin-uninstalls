<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jimmy_branding_option_content');
delete_site_option('jimmy_branding_option_content');
delete_option('jimmy_branding_option_width');
delete_site_option('jimmy_branding_option_width');
delete_option('jimmy_branding_option_width_percents');
delete_site_option('jimmy_branding_option_width_percents');
delete_option('jimmy_branding_option_height_min');
delete_site_option('jimmy_branding_option_height_min');
delete_option('jimmy_branding_option_height_min_percents');
delete_site_option('jimmy_branding_option_height_min_percents');
delete_option('jimmy_branding_option_height_max');
delete_site_option('jimmy_branding_option_height_max');
delete_option('jimmy_branding_option_height_max_percents');
delete_site_option('jimmy_branding_option_height_max_percents');
delete_option('jimmy_branding_option_res_choice');
delete_site_option('jimmy_branding_option_res_choice');
delete_option('jimmy_branding_option_color_opener');
delete_site_option('jimmy_branding_option_color_opener');
delete_option('jimmy_branding_option_width_opener');
delete_site_option('jimmy_branding_option_width_opener');
delete_option('jimmy_branding_option_opener_choice');
delete_site_option('jimmy_branding_option_opener_choice');
delete_option('jimmy_branding_option_webgl_choice');
delete_site_option('jimmy_branding_option_webgl_choice');
delete_option('jimmy_branding_option_shortcode_choice');
delete_site_option('jimmy_branding_option_shortcode_choice');

