<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pose_plugin_advanced_buffer_limit');
delete_site_option('pose_plugin_advanced_buffer_limit');
delete_option('pose_plugin_advanced_zk_tsize');
delete_site_option('pose_plugin_advanced_zk_tsize');
delete_option('pose_plugin_advanced_zk_semaphore');
delete_site_option('pose_plugin_advanced_zk_semaphore');
delete_option('pose_plugin_advanced_zk_cycle');
delete_site_option('pose_plugin_advanced_zk_cycle');
delete_option('pose_plugin_options_logger');
delete_site_option('pose_plugin_options_logger');
delete_option('pose_plugin_options_podd');
delete_site_option('pose_plugin_options_podd');
delete_option('pose_plugin_options_geoip');
delete_site_option('pose_plugin_options_geoip');
delete_option('pose_plugin_options_usecdn');
delete_site_option('pose_plugin_options_usecdn');
delete_option('pose_plugin_options_nag');
delete_site_option('pose_plugin_options_nag');
delete_option('pose_plugin_messages_fallback');
delete_site_option('pose_plugin_messages_fallback');
delete_option('pose_plugin_messages_blocked_message');
delete_site_option('pose_plugin_messages_blocked_message');
delete_option('pose_plugin_messages_bad_ip_message');
delete_site_option('pose_plugin_messages_bad_ip_message');
delete_option('pose_plugin_features_rolemode');
delete_site_option('pose_plugin_features_rolemode');
delete_option('pose_plugin_features_forceip');
delete_site_option('pose_plugin_features_forceip');
delete_option('pose_plugin_features_followip');
delete_site_option('pose_plugin_features_followip');
delete_option('pose_plugin_features_killonreset');
delete_site_option('pose_plugin_features_killonreset');
delete_option('pose_plugin_features_analytics');
delete_site_option('pose_plugin_features_analytics');
delete_option('pose_plugin_features_history');
delete_site_option('pose_plugin_features_history');
delete_option('pose_plugin_features_metrics');
delete_site_option('pose_plugin_features_metrics');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_block_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_maxip_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_limit_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_method_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_idle_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_cookie-ttl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pose_plugin_roles_cookie-rttl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

