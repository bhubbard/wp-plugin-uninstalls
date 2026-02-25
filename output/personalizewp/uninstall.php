<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwp_pending_onboarding');
delete_site_option('pwp_pending_onboarding');
delete_option('pwp_admin_onboarding_dismissed');
delete_site_option('pwp_admin_onboarding_dismissed');
delete_option('personalizewp_onboarding');
delete_site_option('personalizewp_onboarding');
delete_option('pwp_onboarding');
delete_site_option('pwp_onboarding');
delete_option('pwp_admin_notices');
delete_site_option('pwp_admin_notices');
delete_option('pwp_flash_messages');
delete_site_option('pwp_flash_messages');
delete_option('personalizewp_editor_role_values');
delete_site_option('personalizewp_editor_role_values');
delete_option('dxp_newsletter_signup');
delete_site_option('dxp_newsletter_signup');
delete_option('pwp_admin_dashboard_message');
delete_site_option('pwp_admin_dashboard_message');
delete_option('pwp_admin_onboarding_message');
delete_site_option('pwp_admin_onboarding_message');
delete_option('_pwp_pro_db');
delete_site_option('_pwp_pro_db');
delete_option('personalizewp_license_key');
delete_site_option('personalizewp_license_key');
delete_option('personalizewp_license');
delete_site_option('personalizewp_license');
delete_option('personalizewp_license_status');
delete_site_option('personalizewp_license_status');
delete_option('personalisewp_license_notice');
delete_site_option('personalisewp_license_notice');
delete_option('pwp_editor_role_values');
delete_site_option('pwp_editor_role_values');

// Delete Transients
delete_transient('pwp_installing');
delete_site_transient('pwp_installing');

// Clear Cron Jobs
wp_clear_scheduled_hook('personalisewp_daily_scheduled_events');
wp_clear_scheduled_hook('pwp_weekly_scheduled_events');
wp_clear_scheduled_hook('personalisewp_weekly_scheduled_events');
wp_clear_scheduled_hook('personalizewp_daily_purge_expired_activity_logs');
wp_clear_scheduled_hook('personalizewp_daily_purge_expired_anonymous_profiles');
wp_clear_scheduled_hook('personalizewp_daily_purge_expired_known_profiles');
wp_clear_scheduled_hook('personalizewp_weekly_scheduled_events');
wp_clear_scheduled_hook('personalizewp_daily_cleanup_export_files');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_export_contact_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_export_contact_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_export_contact_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_export_contact_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'edit_pwp_export_requests_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'edit_pwp_export_requests_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'edit_pwp_export_requests_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'edit_pwp_export_requests_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwp_newsletter_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwp_newsletter_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwp_newsletter_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwp_newsletter_signup' ) );

