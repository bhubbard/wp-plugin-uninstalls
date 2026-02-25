<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autopostToMastodon-client-id');
delete_site_option('autopostToMastodon-client-id');
delete_option('autopostToMastodon-client-secret');
delete_site_option('autopostToMastodon-client-secret');
delete_option('autopostToMastodon-token');
delete_site_option('autopostToMastodon-token');
delete_option('autopostToMastodon-instance');
delete_site_option('autopostToMastodon-instance');
delete_option('autopostToMastodon-notice');
delete_site_option('autopostToMastodon-notice');
delete_option('autopostToMastodon-message');
delete_site_option('autopostToMastodon-message');
delete_option('autopostToMastodon-mode');
delete_site_option('autopostToMastodon-mode');
delete_option('autopostToMastodon-toot-size');
delete_site_option('autopostToMastodon-toot-size');
delete_option('autopostToMastodon-postOnStandard');
delete_site_option('autopostToMastodon-postOnStandard');
delete_option('autopostToMastodon-catsAsTags');
delete_site_option('autopostToMastodon-catsAsTags');
delete_option('autopostToMastodon-content-warning');
delete_site_option('autopostToMastodon-content-warning');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autopostToMastodon-post-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autopostToMastodon-post-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autopostToMastodon-post-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autopostToMastodon-post-status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autopostToMastodonshare-lastSuccessfullTootURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autopostToMastodonshare-lastSuccessfullTootURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autopostToMastodonshare-lastSuccessfullTootURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autopostToMastodonshare-lastSuccessfullTootURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autopostToMastodon-toot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autopostToMastodon-toot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autopostToMastodon-toot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autopostToMastodon-toot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'autopostToMastodon-toot-thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'autopostToMastodon-toot-thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'autopostToMastodon-toot-thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'autopostToMastodon-toot-thumbnail' ) );

