<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activitypub_db_version');
delete_site_option('activitypub_db_version');
delete_option('activitypub_old_host');
delete_site_option('activitypub_old_host');
delete_option('activitypub_tombstone_urls');
delete_site_option('activitypub_tombstone_urls');
delete_option('activitypub_header_image');
delete_site_option('activitypub_header_image');
delete_option('activitypub_blog_identifier');
delete_site_option('activitypub_blog_identifier');
delete_option('activitypub_blog_description');
delete_site_option('activitypub_blog_description');
delete_option('activitypub_actor_mode');
delete_site_option('activitypub_actor_mode');
delete_option('activitypub_custom_post_content');
delete_site_option('activitypub_custom_post_content');
delete_option('activitypub_max_image_attachments');
delete_site_option('activitypub_max_image_attachments');
delete_option('activitypub_allow_likes');
delete_site_option('activitypub_allow_likes');
delete_option('activitypub_allow_reposts');
delete_site_option('activitypub_allow_reposts');
delete_option('activitypub_auto_approve_reactions');
delete_site_option('activitypub_auto_approve_reactions');
delete_option('activitypub_default_quote_policy');
delete_site_option('activitypub_default_quote_policy');
delete_option('activitypub_use_hashtags');
delete_site_option('activitypub_use_hashtags');
delete_option('activitypub_use_opengraph');
delete_site_option('activitypub_use_opengraph');
delete_option('activitypub_attribution_domains');
delete_site_option('activitypub_attribution_domains');
delete_option('activitypub_following_ui');
delete_site_option('activitypub_following_ui');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_oembed_%', '_site_transient_oembed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('activitypub_send_post_activity');
wp_clear_scheduled_hook('activitypub_send_update_activity');
wp_clear_scheduled_hook('activitypub_send_delete_activity');
wp_clear_scheduled_hook('importer_scheduled_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'protocol' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'protocol' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'protocol' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'protocol' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activitypub_followers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activitypub_followers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activitypub_followers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activitypub_followers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activitypub_content_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activitypub_content_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activitypub_content_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activitypub_content_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'description' ) );

