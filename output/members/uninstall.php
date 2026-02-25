<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('members_admin_access_settings');
delete_site_option('members_admin_access_settings');
delete_option('mrh_plugin_settings');
delete_site_option('mrh_plugin_settings');
delete_option('members_role_hierarchy');
delete_site_option('members_role_hierarchy');
delete_option('members_hide_announcements');
delete_site_option('members_hide_announcements');
delete_option('members_notifications');
delete_site_option('members_notifications');
delete_option('members_activated');
delete_site_option('members_activated');
delete_option('members_review_prompt_delay');
delete_site_option('members_review_prompt_delay');
delete_option('members_settings');
delete_site_option('members_settings');
delete_option('members_review_prompt_removed');
delete_site_option('members_review_prompt_removed');
delete_option('members_active_addons');
delete_site_option('members_active_addons');
delete_option('members_dismiss_upgrade_header');
delete_site_option('members_dismiss_upgrade_header');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('members_addons_migrated');
delete_site_option('members_addons_migrated');

// Delete Transients
delete_transient('members_30days_flag');
delete_site_transient('members_30days_flag');
delete_transient('members_review_prompt_delay');
delete_site_transient('members_review_prompt_delay');
delete_transient('caseproof_growth_tools_configuration_data_v2');
delete_site_transient('caseproof_growth_tools_configuration_data_v2');

// Clear Cron Jobs
wp_clear_scheduled_hook('members_admin_notifications_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_members_access_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_members_access_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_members_access_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_members_access_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_members_access_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_members_access_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_members_access_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_members_access_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_role' ) );

