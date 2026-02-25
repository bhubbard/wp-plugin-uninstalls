<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('bp-activity-db-version');
delete_site_option('bp-activity-db-version');
delete_option('bp-blogs-db-version');
delete_site_option('bp-blogs-db-version');
delete_option('bp-friends-db-version');
delete_site_option('bp-friends-db-version');
delete_option('bp-groups-db-version');
delete_site_option('bp-groups-db-version');
delete_option('bp-messages-db-version');
delete_site_option('bp-messages-db-version');
delete_option('bp-xprofile-db-version');
delete_site_option('bp-xprofile-db-version');
delete_option('bp-db-version');
delete_site_option('bp-db-version');
delete_option('_bp_db_version');
delete_site_option('_bp_db_version');
delete_option('bp-core-db-version');
delete_site_option('bp-core-db-version');
delete_option('_bp-core-db-version');
delete_site_option('_bp-core-db-version');
delete_option('_bp_retain_bp_default');
delete_site_option('_bp_retain_bp_default');
delete_option('hide-loggedout-adminbar');
delete_site_option('hide-loggedout-adminbar');
delete_option('_bp_community_visibility');
delete_site_option('_bp_community_visibility');
delete_option('_bp_theme_package_id');
delete_site_option('_bp_theme_package_id');
delete_option('bp-disable-account-deletion');
delete_site_option('bp-disable-account-deletion');
delete_option('bp-disable-avatar-uploads');
delete_site_option('bp-disable-avatar-uploads');
delete_option('bp-disable-cover-image-uploads');
delete_site_option('bp-disable-cover-image-uploads');
delete_option('bp-enable-members-invitations');
delete_site_option('bp-enable-members-invitations');
delete_option('bp-enable-membership-requests');
delete_site_option('bp-enable-membership-requests');
delete_option('bp-disable-profile-sync');
delete_site_option('bp-disable-profile-sync');
delete_option('bp_restrict_group_creation');
delete_site_option('bp_restrict_group_creation');
delete_option('bp-disable-group-avatar-uploads');
delete_site_option('bp-disable-group-avatar-uploads');
delete_option('bp-disable-group-cover-image-uploads');
delete_site_option('bp-disable-group-cover-image-uploads');
delete_option('bp-disable-group-activity-deletions');
delete_site_option('bp-disable-group-activity-deletions');
delete_option('bp-disable-blogforum-comments');
delete_site_option('bp-disable-blogforum-comments');
delete_option('_bp_enable_heartbeat_refresh');
delete_site_option('_bp_enable_heartbeat_refresh');
delete_option('_bp_enable_akismet');
delete_site_option('_bp_enable_akismet');
delete_option('illegal_names');
delete_site_option('illegal_names');
delete_option('limited_email_domains');
delete_site_option('limited_email_domains');
delete_option('registration');
delete_site_option('registration');

// Delete Transients
delete_transient('_bp_activation_redirect');
delete_site_transient('_bp_activation_redirect');
delete_transient('_bp_is_new_install');
delete_site_transient('_bp_is_new_install');
delete_transient('bp_active_member_count');
delete_site_transient('bp_active_member_count');
delete_transient('theme_roots');
delete_site_transient('theme_roots');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_bp_admin_signups_errors');
delete_site_transient('_bp_admin_signups_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('bp_activity_akismet_delete_old_metadata');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bp_activity_comment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bp_activity_comment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bp_activity_comment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bp_activity_comment_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bp_component_slugs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bp_component_slugs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bp_component_slugs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bp_component_slugs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bp_last_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bp_last_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bp_last_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bp_last_posted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bp_type_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bp_type_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bp_type_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bp_type_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bp_email_preheader' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bp_email_preheader' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bp_email_preheader' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bp_email_preheader' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_export_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_export_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_export_file_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_export_file_name' ) );

