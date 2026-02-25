<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_USER_VERSION_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_CALENDAR_BLOCKED_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('B2S_MULTI_WIDGET');
delete_site_option('B2S_MULTI_WIDGET');
delete_option('B2S_PLUGIN_DISABLE_TRAIL');
delete_site_option('B2S_PLUGIN_DISABLE_TRAIL');
delete_option('B2S_PLUGIN_DEACTIVATE_SCHED_POST');
delete_site_option('B2S_PLUGIN_DEACTIVATE_SCHED_POST');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_LOCK_AUTO_POST_IMPORT_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_PRG_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_POST_META_TAGES_TWITTER_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_POST_META_TAGES_OG_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_USER_ALLOW_SHORTCODE_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_USER_USE_PERMALINKS_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_PRIVACY_POLICY_USER_ACCEPT_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_UPDATE_MAIL_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('B2S_HIDE_PREMIUM_MESSAGE');
delete_site_option('B2S_HIDE_PREMIUM_MESSAGE');
delete_option('B2S_HIDE_TRAIL_MESSAGE');
delete_site_option('B2S_HIDE_TRAIL_MESSAGE');
delete_option('B2S_HIDE_TRAIL_ENDED');
delete_site_option('B2S_HIDE_TRAIL_ENDED');
delete_option('B2S_PLUGIN_GENERAL_OPTIONS');
delete_site_option('B2S_PLUGIN_GENERAL_OPTIONS');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_POST_OPTIONS_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_SAVE_META_BOX_AUTO_SHARE_PROFILE_USER_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('B2S_HIDE_RATING');
delete_site_option('B2S_HIDE_RATING');
delete_option('B2S_SHOW_RATING');
delete_site_option('B2S_SHOW_RATING');
delete_option('b2s_plugin_version');
delete_site_option('b2s_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_OPTIONS_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('B2S_PLUGIN_UPDATE_TIME_NETWORK_PROPERTIES');
delete_site_option('B2S_PLUGIN_UPDATE_TIME_NETWORK_PROPERTIES');
delete_option('B2S_PLUGIN_DATA_NETWORK_PROPERTIES');
delete_site_option('B2S_PLUGIN_DATA_NETWORK_PROPERTIES');
delete_option('B2S_PLUGIN_CHANGELOG');
delete_site_option('B2S_PLUGIN_CHANGELOG');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_PLUGIN_POST_CONTENT_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('B2S_PLUGIN_ADDON_VIDEO_TRIAL_END_DATE');
delete_site_option('B2S_PLUGIN_ADDON_VIDEO_TRIAL_END_DATE');
delete_option('B2S_PLUGIN_NEXT_CHECK_UPDATE_REQUEST');
delete_site_option('B2S_PLUGIN_NEXT_CHECK_UPDATE_REQUEST');
delete_option('wpseo_social');
delete_site_option('wpseo_social');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'B2S_CAL_EVENT_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'b2s_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'b2s_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'b2s_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'b2s_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'b2s_original_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'b2s_original_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'b2s_original_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'b2s_original_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

