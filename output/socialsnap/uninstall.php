<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialsnap_rating');
delete_site_option('socialsnap_rating');
delete_option('socialsnap_activation_redirect');
delete_site_option('socialsnap_activation_redirect');
delete_option('socialsnap_authorized_networks');
delete_site_option('socialsnap_authorized_networks');
delete_option('socialsnap_version');
delete_site_option('socialsnap_version');
delete_option('socialsnap_activated');
delete_site_option('socialsnap_activated');
delete_option('dpsp_settings');
delete_site_option('dpsp_settings');
delete_option('dpsp_location_sidebar');
delete_site_option('dpsp_location_sidebar');
delete_option('dpsp_location_content');
delete_site_option('dpsp_location_content');
delete_option('dpsp_location_sticky_bar');
delete_site_option('dpsp_location_sticky_bar');
delete_option('fsb_global_option');
delete_site_option('fsb_global_option');
delete_option('mashsb_settings');
delete_site_option('mashsb_settings');
delete_option('social_warfare_settings');
delete_site_option('social_warfare_settings');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'socialsnap_homepage_click_share_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('socialsnap_homepage_share_count_timestamp');
delete_site_option('socialsnap_homepage_share_count_timestamp');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'socialsnap_homepage_share_count_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('socialsnap_homepage_share_count_total');
delete_site_option('socialsnap_homepage_share_count_total');
delete_option('socialsnap_settings');
delete_site_option('socialsnap_settings');
delete_option('socialsnap_bitly_access_token');
delete_site_option('socialsnap_bitly_access_token');
delete_option('socialsnap_bitly_user_date');
delete_site_option('socialsnap_bitly_user_date');
delete_option('socialsnap_bitly_username');
delete_site_option('socialsnap_bitly_username');
delete_option('socialsnap_cached_bitly_links');
delete_site_option('socialsnap_cached_bitly_links');
delete_option('socialsnap_follow_counts');
delete_site_option('socialsnap_follow_counts');
delete_option('socialsnap_license_updates');
delete_site_option('socialsnap_license_updates');
delete_option('socialsnap_license');
delete_site_option('socialsnap_license');

// Delete Transients
delete_transient('socialsnap_addons');
delete_site_transient('socialsnap_addons');
delete_transient('socialsnap_activation_redirect');
delete_site_transient('socialsnap_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_socialsnap_notice_%', '_site_transient_socialsnap_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ss_facebook_token');
delete_site_transient('ss_facebook_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ss_social_share_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ss_social_share_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ss_social_share_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ss_social_share_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ss_total_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ss_total_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ss_total_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ss_total_share_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ss_ss_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ss_ss_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ss_ss_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ss_ss_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ss_ss_custom_tweet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ss_ss_custom_tweet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ss_ss_custom_tweet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ss_ss_custom_tweet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ss_ss_click_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ss_ss_click_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ss_ss_click_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ss_ss_click_share_count_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'socialsnap_share_count_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'socialsnap_share_count_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'socialsnap_share_count_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'socialsnap_share_count_timestamp' ) );

