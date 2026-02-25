<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lgre_elementor_login_align');
delete_site_option('lgre_elementor_login_align');
delete_option('lgre_elementor_forms_align');
delete_site_option('lgre_elementor_forms_align');
delete_option('lgre_ip_blocklist_enabled');
delete_site_option('lgre_ip_blocklist_enabled');
delete_option('lgre_ip_blocklist');
delete_site_option('lgre_ip_blocklist');
delete_option('lgre_adv_schema_migrated');
delete_site_option('lgre_adv_schema_migrated');
delete_option('lgre_autoload_fix_done');
delete_site_option('lgre_autoload_fix_done');
delete_option('lgre_delete_data_on_uninstall');
delete_site_option('lgre_delete_data_on_uninstall');

// Delete Transients
delete_transient('lgre_recaptcha_enable_blocked_notice');
delete_site_transient('lgre_recaptcha_enable_blocked_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lgre_admin_conflict_notice_seen_v2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lgre_admin_conflict_notice_seen_v2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lgre_admin_conflict_notice_seen_v2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lgre_admin_conflict_notice_seen_v2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lgre_admin_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lgre_admin_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lgre_admin_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lgre_admin_setup_notice_dismissed' ) );

