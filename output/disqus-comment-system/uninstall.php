<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disqus_sync_token');
delete_site_option('disqus_sync_token');
delete_option('disqus_forum_url');
delete_site_option('disqus_forum_url');
delete_option('disqus_secret_key');
delete_site_option('disqus_secret_key');
delete_option('disqus_admin_access_token');
delete_site_option('disqus_admin_access_token');
delete_option('disqus_public_key');
delete_site_option('disqus_public_key');
delete_option('disqus_sso_enabled');
delete_site_option('disqus_sso_enabled');
delete_option('disqus_sso_button');
delete_site_option('disqus_sso_button');
delete_option('disqus_render_js');
delete_site_option('disqus_render_js');
delete_option('disqus_last_sync_message');
delete_site_option('disqus_last_sync_message');
delete_option('disqus_manual_sync');
delete_site_option('disqus_manual_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disqus_ads_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disqus_ads_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disqus_ads_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disqus_ads_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dsq_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dsq_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dsq_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dsq_thread_id' ) );

