<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmake_advance_user_avatar_settings');
delete_site_option('wpmake_advance_user_avatar_settings');
delete_option('bp-disable-avatar-uploads');
delete_site_option('bp-disable-avatar-uploads');
delete_option('wpmake_advance_user_avatar_admin_footer_text_rated');
delete_site_option('wpmake_advance_user_avatar_admin_footer_text_rated');
delete_option('wpmake_aua_review_notice_dismissed');
delete_site_option('wpmake_aua_review_notice_dismissed');
delete_option('wpmake_aua_activated');
delete_site_option('wpmake_aua_activated');
delete_option('wpmake_aua_updated_at');
delete_site_option('wpmake_aua_updated_at');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmake_advance_user_avatar_attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmake_advance_user_avatar_attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmake_advance_user_avatar_attachment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmake_advance_user_avatar_attachment_id' ) );

