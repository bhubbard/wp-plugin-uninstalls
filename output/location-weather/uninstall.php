<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('location_weather_settings');
delete_site_option('location_weather_settings');
delete_option('sp_ua_site_type');
delete_site_option('sp_ua_site_type');
delete_option('splw_allow_anonymous_data');
delete_site_option('splw_allow_anonymous_data');
delete_option('splw_blocks_visibility_options');
delete_site_option('splw_blocks_visibility_options');
delete_option('splw_setup_wizard_visited');
delete_site_option('splw_setup_wizard_visited');
delete_option('location_weather_db_version');
delete_site_option('location_weather_db_version');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('splw_ignored_consent_notice');
delete_site_option('splw_ignored_consent_notice');
delete_option('splw_consent_notice_start_time');
delete_site_option('splw_consent_notice_start_time');
delete_option('location_weather_review_notice_dismiss');
delete_site_option('location_weather_review_notice_dismiss');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shapedplugin_offer_banner_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('location_weather_version');
delete_site_option('location_weather_version');
delete_option('location_weather_first_version');
delete_site_option('location_weather_first_version');
delete_option('location_weather_activation_date');
delete_site_option('location_weather_activation_date');
delete_option('_sp_options');
delete_site_option('_sp_options');
delete_option('splw_blocks_custom_colors_options');
delete_site_option('splw_blocks_custom_colors_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_spl_weather_widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_spl_weather_fonts_widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('location_weather_premade_wishlist');
delete_site_option('location_weather_premade_wishlist');
delete_option('splw_default_call');
delete_site_option('splw_default_call');
delete_option('splw_weather_api_default_call');
delete_site_option('splw_weather_api_default_call');
delete_option('splw_site_type');
delete_site_option('splw_site_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sp_lw_page_id%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('splw_changelogs');
delete_site_transient('splw_changelogs');
delete_transient('splw_plugins');
delete_site_transient('splw_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__spl_weather_preview_%', '_site_transient__spl_weather_preview_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__spl_weather_preview_fonts_%', '_site_transient__spl_weather_preview_fonts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('location_weather_weekly_scheduled_events');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sp_location_weather_generator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sp_location_weather_generator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sp_location_weather_generator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sp_location_weather_generator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sp_location_weather_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sp_location_weather_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sp_location_weather_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sp_location_weather_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spl_weather_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spl_weather_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spl_weather_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spl_weather_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_splwt_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_splwt_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_splwt_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_splwt_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spl_weather_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spl_weather_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spl_weather_fonts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spl_weather_fonts' ) );

