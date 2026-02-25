<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'smarttags_shared_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smarttags_cloud_job_id');
delete_site_option('smarttags_cloud_job_id');
delete_option('smarttags_cloud_registered_at');
delete_site_option('smarttags_cloud_registered_at');
delete_option('smarttags_cloud_last_sync');
delete_site_option('smarttags_cloud_last_sync');
delete_option('smarttags_cloud_last_cleanup');
delete_site_option('smarttags_cloud_last_cleanup');
delete_option('smarttags_dlm_activation_token');
delete_site_option('smarttags_dlm_activation_token');
delete_option('smarttags_dlm_license_key');
delete_site_option('smarttags_dlm_license_key');
delete_option('smarttags_dlm_consumer_key');
delete_site_option('smarttags_dlm_consumer_key');
delete_option('smarttags_dlm_consumer_secret');
delete_site_option('smarttags_dlm_consumer_secret');
delete_option('smarttags_dlm_activated_domain');
delete_site_option('smarttags_dlm_activated_domain');
delete_option('smarttags_dlm_domain_mismatch');
delete_site_option('smarttags_dlm_domain_mismatch');
delete_option('smarttags_last_deactivation_cancelled_count');
delete_site_option('smarttags_last_deactivation_cancelled_count');
delete_option('smarttags_auto_runs_count');
delete_site_option('smarttags_auto_runs_count');
delete_option('smarttags_install_hash');
delete_site_option('smarttags_install_hash');
delete_option('smarttags_shared_key_google');
delete_site_option('smarttags_shared_key_google');
delete_option('smarttags_shared_key_groq');
delete_site_option('smarttags_shared_key_groq');
delete_option('smarttags_settings_v1');
delete_site_option('smarttags_settings_v1');

// Delete Transients
delete_transient('smarttags_cloud_status');
delete_site_transient('smarttags_cloud_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_smarttags_temp_ai_enabled_%', '_site_transient_smarttags_temp_ai_enabled_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('smarttags_dlm_license_status');
delete_site_transient('smarttags_dlm_license_status');
delete_transient('smarttags_google_rate_limit_hit');
delete_site_transient('smarttags_google_rate_limit_hit');
delete_transient('smarttags_remote_prompts');
delete_site_transient('smarttags_remote_prompts');
delete_transient('smarttags_lock');
delete_site_transient('smarttags_lock');
delete_transient('smarttags_tag_popularity');
delete_site_transient('smarttags_tag_popularity');
delete_transient('smarttags_count_with_suggestions');
delete_site_transient('smarttags_count_with_suggestions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarttags_suggestions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarttags_suggestions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarttags_suggestions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarttags_suggestions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarttags_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarttags_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarttags_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarttags_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarttags_last_auto_applied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarttags_last_auto_applied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarttags_last_auto_applied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarttags_last_auto_applied' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarttags_tag_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarttags_tag_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarttags_tag_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarttags_tag_dates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smarttags_ai_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smarttags_ai_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smarttags_ai_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smarttags_ai_tags' ) );

