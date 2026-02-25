<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crowdfundly_activate_redirect');
delete_site_option('crowdfundly_activate_redirect');
delete_option('crowdfundly_organization_page_id');
delete_site_option('crowdfundly_organization_page_id');
delete_option('crowdfundly_all_campaigns_page_id');
delete_site_option('crowdfundly_all_campaigns_page_id');
delete_option('crowdfundly_single_campaign_page_id');
delete_site_option('crowdfundly_single_campaign_page_id');
delete_option('crowdfundly_intro_notice');
delete_site_option('crowdfundly_intro_notice');
delete_option('crowdfundly_url_update');
delete_site_option('crowdfundly_url_update');
delete_option('crowdfundly_settings');
delete_site_option('crowdfundly_settings');
delete_option('auth_meta');
delete_site_option('auth_meta');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');
delete_option('crowdfundly_update_v208');
delete_site_option('crowdfundly_update_v208');

// Delete Transients
delete_transient('crowdfundly_api_sync');
delete_site_transient('crowdfundly_api_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crowdfundly_organization_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crowdfundly_organization_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crowdfundly_organization_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crowdfundly_organization_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crowdfundly_all_campaigns_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crowdfundly_all_campaigns_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crowdfundly_all_campaigns_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crowdfundly_all_campaigns_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crowdfundly_single_campaign_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crowdfundly_single_campaign_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crowdfundly_single_campaign_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crowdfundly_single_campaign_page_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

