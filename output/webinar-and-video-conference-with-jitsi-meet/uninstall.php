<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jitsi_opt_select_api');
delete_site_option('jitsi_opt_select_api');
delete_option('jitsi_opt_free_domain');
delete_site_option('jitsi_opt_free_domain');
delete_option('jitsi_opt_width');
delete_site_option('jitsi_opt_width');
delete_option('jitsi_opt_height');
delete_site_option('jitsi_opt_height');
delete_option('jitsi_opt_start_local_audio_muted');
delete_site_option('jitsi_opt_start_local_audio_muted');
delete_option('jitsi_opt_startWithVideoMuted');
delete_site_option('jitsi_opt_startWithVideoMuted');
delete_option('jitsi_opt_startScreenSharing');
delete_site_option('jitsi_opt_startScreenSharing');
delete_option('jitsi_opt_invite');
delete_site_option('jitsi_opt_invite');
delete_option('jitsi_opt_app_id');
delete_site_option('jitsi_opt_app_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%private_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%app_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('webinar-and-video-conference-with-jitsi-meet_allow_tracking');
delete_site_option('webinar-and-video-conference-with-jitsi-meet_allow_tracking');
delete_option('jitsi_meet_wp_review_notice_interval');
delete_site_option('jitsi_meet_wp_review_notice_interval');
delete_option('jitsi_meet_wp_affiliate_notice_interval');
delete_site_option('jitsi_meet_wp_affiliate_notice_interval');
delete_option('jitsi_meet_welcome_redirect');
delete_site_option('jitsi_meet_welcome_redirect');
delete_option('jitsi_pro_activate');
delete_site_option('jitsi_pro_activate');
delete_option('jitsi_ultimate_activate');
delete_site_option('jitsi_ultimate_activate');
delete_option('jitsi_pro_license_is_valid');
delete_site_option('jitsi_pro_license_is_valid');
delete_option('jitsi_ultimate_license_is_valid');
delete_site_option('jitsi_ultimate_license_is_valid');
delete_option('jitsi_opt_api_key');
delete_site_option('jitsi_opt_api_key');
delete_option('jitsi_opt_private_key');
delete_site_option('jitsi_opt_private_key');
delete_option('jitsi_opt_user_avatar');
delete_site_option('jitsi_opt_user_avatar');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('jitsi_meet_wp_install_time');
delete_site_option('jitsi_meet_wp_install_time');

// Delete Transients
delete_transient('jitsi_saved_jwt');
delete_site_transient('jitsi_saved_jwt');
delete_transient('jitsi_meet_wp_review_notice_interval');
delete_site_transient('jitsi_meet_wp_review_notice_interval');
delete_transient('jitsi_meet_wp_affiliate_notice_interval');
delete_site_transient('jitsi_meet_wp_affiliate_notice_interval');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jitsi_hosted_topbar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jitsi_hosted_topbar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jitsi_hosted_topbar_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jitsi_hosted_topbar_dismissed' ) );

