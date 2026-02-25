<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpe_template');
delete_site_option('wpe_template');
delete_option('leadin_portalId');
delete_site_option('leadin_portalId');
delete_option('leadin_account_name');
delete_site_option('leadin_account_name');
delete_option('leadin_portal_domain');
delete_site_option('leadin_portal_domain');
delete_option('leadin_hublet');
delete_site_option('leadin_hublet');
delete_option('leadin_disable_internal_tracking');
delete_site_option('leadin_disable_internal_tracking');
delete_option('leadin_business_unit_id');
delete_site_option('leadin_business_unit_id');
delete_option('leadin_access_token');
delete_site_option('leadin_access_token');
delete_option('leadin_refresh_token');
delete_site_option('leadin_refresh_token');
delete_option('leadin_expiry_time');
delete_site_option('leadin_expiry_time');
delete_option('leadin_activation_time');
delete_site_option('leadin_activation_time');
delete_option('leadin_content_embed_ui_install');
delete_site_option('leadin_content_embed_ui_install');

// Delete Transients
delete_transient('proxy_mappings');
delete_site_transient('proxy_mappings');

// Clear Cron Jobs
wp_clear_scheduled_hook('leadin_update_proxy_mappings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadin_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadin_skip_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadin_skip_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadin_skip_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadin_skip_review' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadin_review_banner_last_call' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadin_review_banner_last_call' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadin_review_banner_last_call' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadin_review_banner_last_call' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadin_has_min_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadin_has_min_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadin_has_min_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadin_has_min_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadin_track_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadin_track_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadin_track_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadin_track_consent' ) );

