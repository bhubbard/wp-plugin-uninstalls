<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sr_api_name');
delete_site_option('sr_api_name');
delete_option('sr_api_key');
delete_site_option('sr_api_key');
delete_option('sr_contact_page');
delete_site_option('sr_contact_page');
delete_option('sr_show_listingmeta');
delete_site_option('sr_show_listingmeta');
delete_option('sr_show_listing_remarks');
delete_site_option('sr_show_listing_remarks');
delete_option('sr_show_agent_contact');
delete_site_option('sr_show_agent_contact');
delete_option('sr_listing_gallery');
delete_site_option('sr_listing_gallery');
delete_option('sr_show_leadcapture');
delete_site_option('sr_show_leadcapture');
delete_option('sr_leadcapture_recipient');
delete_site_option('sr_leadcapture_recipient');
delete_option('sr_additional_rooms');
delete_site_option('sr_additional_rooms');
delete_option('sr_listhub_analytics');
delete_site_option('sr_listhub_analytics');
delete_option('sr_listhub_analytics_id');
delete_site_option('sr_listhub_analytics_id');
delete_option('sr_listhub_analytics_test_events');
delete_site_option('sr_listhub_analytics_test_events');
delete_option('sr_search_map_position');
delete_site_option('sr_search_map_position');
delete_option('sr_permalink_structure');
delete_site_option('sr_permalink_structure');
delete_option('sr_google_api_key');
delete_site_option('sr_google_api_key');
delete_option('sr_office_on_thumbnails');
delete_site_option('sr_office_on_thumbnails');
delete_option('sr_agent_on_thumbnails');
delete_site_option('sr_agent_on_thumbnails');
delete_option('sr_thumbnail_idx_image');
delete_site_option('sr_thumbnail_idx_image');
delete_option('sr_show_mls_status_text');
delete_site_option('sr_show_mls_status_text');
delete_option('sr_agent_office_above_the_fold');
delete_site_option('sr_agent_office_above_the_fold');
delete_option('sr_show_mls_trademark_symbol');
delete_site_option('sr_show_mls_trademark_symbol');
delete_option('sr_disable_listing_details_map');
delete_site_option('sr_disable_listing_details_map');
delete_option('sr_default_idx_filter');
delete_site_option('sr_default_idx_filter');
delete_option('sr_idx_address_display_text');
delete_site_option('sr_idx_address_display_text');
delete_option('sr_date_default_timezone');
delete_site_option('sr_date_default_timezone');
delete_option('sr_listing_force_image_https');
delete_site_option('sr_listing_force_image_https');
delete_option('sr_leadcapture_custom_form');
delete_site_option('sr_leadcapture_custom_form');
delete_option('sr_custom_disclaimer');
delete_site_option('sr_custom_disclaimer');
delete_option('sr_custom_no_results_message');
delete_site_option('sr_custom_no_results_message');
delete_option('sr_demo_page_created');
delete_site_option('sr_demo_page_created');
delete_option('sr_show_admin_message');
delete_site_option('sr_show_admin_message');
delete_option('sr_adv_search_meta_vendors');
delete_site_option('sr_adv_search_meta_vendors');
delete_option('sr_adv_search_meta_endpoints');
delete_site_option('sr_adv_search_meta_endpoints');
delete_option('sr_adv_search_meta_timestamp');
delete_site_option('sr_adv_search_meta_timestamp');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Clear Cron Jobs
wp_clear_scheduled_hook('sr_update_adv_search_options_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sr_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sr_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sr_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sr_page_template' ) );

