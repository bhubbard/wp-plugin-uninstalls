<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selectFAQTemlate');
delete_site_option('selectFAQTemlate');
delete_option('enabFAQIndexPage');
delete_site_option('enabFAQIndexPage');
delete_option('enabFAQWooTab');
delete_site_option('enabFAQWooTab');
delete_option('faqTitleBackgroundColor');
delete_site_option('faqTitleBackgroundColor');
delete_option('customfaqitemorder');
delete_site_option('customfaqitemorder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ffw_use_post_title_and_content_as_faq_via_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ffw_use_post_title_and_content_as_faq_via_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ffw_use_post_title_and_content_as_faq_via_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ffw_use_post_title_and_content_as_faq_via_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'no_index_to_this_faq_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'no_index_to_this_faq_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'no_index_to_this_faq_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'no_index_to_this_faq_page' ) );

