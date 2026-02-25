<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixcustomify_settings');
delete_site_option('pixcustomify_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_final' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sm_coloration_level');
delete_site_option('sm_coloration_level');
delete_option('sm_color_diversity');
delete_site_option('sm_color_diversity');
delete_option('sm_shuffle_colors');
delete_site_option('sm_shuffle_colors');
delete_option('sm_color_palette');
delete_site_option('sm_color_palette');
delete_option('sm_color_palette_variation');
delete_site_option('sm_color_palette_variation');
delete_option('sm_is_custom_color_palette');
delete_site_option('sm_is_custom_color_palette');
delete_option('sm_font_palette');
delete_site_option('sm_font_palette');
delete_option('sm_font_palette_variation');
delete_site_option('sm_font_palette_variation');
delete_option('sm_is_custom_font_palette');
delete_site_option('sm_is_custom_font_palette');
delete_option('style_manager_user_feedback_provided');
delete_site_option('style_manager_user_feedback_provided');
delete_option('customify_dbversion');
delete_site_option('customify_dbversion');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_timestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'theme_mods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sm_dark_mode_advanced');
delete_site_option('sm_dark_mode_advanced');
delete_option('sm_dark_mode');
delete_site_option('sm_dark_mode');
delete_option('sm_dark_primary_final');
delete_site_option('sm_dark_primary_final');
delete_option('sm_dark_secondary_final');
delete_site_option('sm_dark_secondary_final');
delete_option('sm_dark_tertiary_final');
delete_site_option('sm_dark_tertiary_final');
delete_option('sm_light_primary_final');
delete_site_option('sm_light_primary_final');
delete_option('sm_light_secondary_final');
delete_site_option('sm_light_secondary_final');
delete_option('sm_light_tertiary_final');
delete_site_option('sm_light_tertiary_final');

