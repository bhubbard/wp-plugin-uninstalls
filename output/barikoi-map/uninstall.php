<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bkoimadhk_api_key');
delete_site_option('bkoimadhk_api_key');
delete_option('bkoimadhk_shortcodes');
delete_site_option('bkoimadhk_shortcodes');
delete_option('bkoimadhk_map_checkout_style');
delete_site_option('bkoimadhk_map_checkout_style');
delete_option('bkoimadhk_map_checkout_default_zoom_level');
delete_site_option('bkoimadhk_map_checkout_default_zoom_level');
delete_option('bkoimadhk_map_checkout_default_coordinates');
delete_site_option('bkoimadhk_map_checkout_default_coordinates');
delete_option('bkoimadhk_map_checkout_map_switcher');
delete_site_option('bkoimadhk_map_checkout_map_switcher');
delete_option('bkoimadhk_map_checkout_add_autocomplete');
delete_site_option('bkoimadhk_map_checkout_add_autocomplete');
delete_option('bkoimadhk_map_checkout_custom_marker_icon');
delete_site_option('bkoimadhk_map_checkout_custom_marker_icon');
delete_option('barikoidhk_default_zoom_level');
delete_site_option('barikoidhk_default_zoom_level');
delete_option('barikoidhk_default_map_style');
delete_site_option('barikoidhk_default_map_style');
delete_option('barikoidhk_custom_marker_icon');
delete_site_option('barikoidhk_custom_marker_icon');
delete_option('barikoidhk_shortcodes');
delete_site_option('barikoidhk_shortcodes');
delete_option('bkoimadhk_map_options');
delete_site_option('bkoimadhk_map_options');
delete_option('bkoimadhk_default_map_style');
delete_site_option('bkoimadhk_default_map_style');
delete_option('bkoimadhk_default_zoom_level');
delete_site_option('bkoimadhk_default_zoom_level');
delete_option('bkoimadhk_custom_marker_icon');
delete_site_option('bkoimadhk_custom_marker_icon');

