<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geoforai_home_description');
delete_site_option('geoforai_home_description');
delete_option('geoforai_home_topics');
delete_site_option('geoforai_home_topics');
delete_option('geoforai_llms_training');
delete_site_option('geoforai_llms_training');
delete_option('geoforai_llms_scraping');
delete_site_option('geoforai_llms_scraping');
delete_option('geoforai_business_name');
delete_site_option('geoforai_business_name');
delete_option('geoforai_business_address1');
delete_site_option('geoforai_business_address1');
delete_option('geoforai_business_postcode');
delete_site_option('geoforai_business_postcode');
delete_option('geoforai_business_city');
delete_site_option('geoforai_business_city');
delete_option('geoforai_business_country');
delete_site_option('geoforai_business_country');
delete_option('geoforai_business_phone');
delete_site_option('geoforai_business_phone');
delete_option('geoforai_business_email');
delete_site_option('geoforai_business_email');
delete_option('geoforai_business_url');
delete_site_option('geoforai_business_url');
delete_option('geoforai_business_logo');
delete_site_option('geoforai_business_logo');
delete_option('geoforai_business_hours');
delete_site_option('geoforai_business_hours');
delete_option('geoforai_business_lat');
delete_site_option('geoforai_business_lat');
delete_option('geoforai_business_lng');
delete_site_option('geoforai_business_lng');
delete_option('geoforai_ai_datause');
delete_site_option('geoforai_ai_datause');
delete_option('geoforai_ai_imagetraining');
delete_site_option('geoforai_ai_imagetraining');
delete_option('geoforai_ai_texttraining');
delete_site_option('geoforai_ai_texttraining');
delete_option('geoforai_ai_voicetraining');
delete_site_option('geoforai_ai_voicetraining');
delete_option('geoforai_ai_attribution');
delete_site_option('geoforai_ai_attribution');
delete_option('geoforai_jsonld_article');
delete_site_option('geoforai_jsonld_article');
delete_option('geoforai_jsonld_product');
delete_site_option('geoforai_jsonld_product');

// Delete Transients
delete_transient('geoforai_audit_results');
delete_site_transient('geoforai_audit_results');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_geoforai_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_geoforai_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_geoforai_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_geoforai_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_geoforai_topics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_geoforai_topics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_geoforai_topics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_geoforai_topics' ) );

