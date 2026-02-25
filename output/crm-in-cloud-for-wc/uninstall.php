<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crmfwc-users-roles');
delete_site_option('crmfwc-users-roles');
delete_option('crmfwc-email');
delete_site_option('crmfwc-email');
delete_option('crmfwc-passw');
delete_site_option('crmfwc-passw');
delete_option('wcexd_company_invoice');
delete_site_option('wcexd_company_invoice');
delete_option('wcexd_private_invoice');
delete_site_option('wcexd_private_invoice');
delete_option('wcefr_company_invoice');
delete_site_option('wcefr_company_invoice');
delete_option('wcefr_private_invoice');
delete_site_option('wcefr_private_invoice');

// Delete Transients
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crmfwc-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crmfwc-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crmfwc-id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crmfwc-id' ) );

