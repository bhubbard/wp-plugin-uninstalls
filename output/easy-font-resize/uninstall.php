<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpavefrsz_elements_array');
delete_site_option('wpavefrsz_elements_array');
delete_option('wpavefrsz_main_selector');
delete_site_option('wpavefrsz_main_selector');
delete_option('wpavefrsz_min_modifier');
delete_site_option('wpavefrsz_min_modifier');
delete_option('wpavefrsz_max_modifier');
delete_site_option('wpavefrsz_max_modifier');
delete_option('wpavefrsz_step_modifier');
delete_site_option('wpavefrsz_step_modifier');
delete_option('wpavefrsz_remember_font_size_sitewide');
delete_site_option('wpavefrsz_remember_font_size_sitewide');
delete_option('wpavefrsz_remember_font_size_enforce');
delete_site_option('wpavefrsz_remember_font_size_enforce');
delete_option('wpavefrsz_include_selectors');
delete_site_option('wpavefrsz_include_selectors');
delete_option('wpavefrsz_exclude_selectors');
delete_site_option('wpavefrsz_exclude_selectors');
delete_option('wpavefrsz_position');
delete_site_option('wpavefrsz_position');
delete_option('wpavefrsz_show_on_mobile');
delete_site_option('wpavefrsz_show_on_mobile');
delete_option('wpavefrsz_hide_text');
delete_site_option('wpavefrsz_hide_text');
delete_option('wpavefrsz_text');
delete_site_option('wpavefrsz_text');
delete_option('wpavefrsz_instructions_icon');
delete_site_option('wpavefrsz_instructions_icon');
delete_option('wpavefrsz_use_wp_icons');
delete_site_option('wpavefrsz_use_wp_icons');
delete_option('wpavefrsz_main_offset_mobile');
delete_site_option('wpavefrsz_main_offset_mobile');
delete_option('wpavefrsz_main_offset');
delete_site_option('wpavefrsz_main_offset');
delete_option('wpavefrsz_theme');
delete_site_option('wpavefrsz_theme');
delete_option('wpavefrsz_add_notranslate_class');
delete_site_option('wpavefrsz_add_notranslate_class');
delete_option('wpavefrsz_text_decrease');
delete_site_option('wpavefrsz_text_decrease');
delete_option('wpavefrsz_text_increase');
delete_site_option('wpavefrsz_text_increase');
delete_option('wpavefrsz_text_reset');
delete_site_option('wpavefrsz_text_reset');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpavefrsz-wpave-ignore-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpavefrsz-wpave-ignore-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpavefrsz-wpave-ignore-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpavefrsz-wpave-ignore-notice' ) );

