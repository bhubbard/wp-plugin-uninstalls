<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glueup_login_restrict_site');
delete_site_option('glueup_login_restrict_site');
delete_option('glueup_login_private_key');
delete_site_option('glueup_login_private_key');
delete_option('glueup_login_public_key');
delete_site_option('glueup_login_public_key');
delete_option('glueup_login_org_name');
delete_site_option('glueup_login_org_name');
delete_option('glueup_login_delete_on_uninstall');
delete_site_option('glueup_login_delete_on_uninstall');
delete_option('glueup_login_allowed_statuses');
delete_site_option('glueup_login_allowed_statuses');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'glueup_member_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'glueup_member_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'glueup_member_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'glueup_member_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'glueup_company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'glueup_company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'glueup_company_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'glueup_company_name' ) );

