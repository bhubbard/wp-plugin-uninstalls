<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mowsterG_shortcode');
delete_site_option('mowsterG_shortcode');
delete_option('mowsterG_pagination_word');
delete_site_option('mowsterG_pagination_word');
delete_option('mowster_Glossary_Terms_Per_Page');
delete_site_option('mowster_Glossary_Terms_Per_Page');
delete_option('mowsterG_terms_per_page');
delete_site_option('mowsterG_terms_per_page');
delete_option('mowsterG_html_before_term');
delete_site_option('mowsterG_html_before_term');
delete_option('mowsterG_html_after_term');
delete_site_option('mowsterG_html_after_term');
delete_option('mowsterG_html_before_description');
delete_site_option('mowsterG_html_before_description');
delete_option('mowsterG_html_after_description');
delete_site_option('mowsterG_html_after_description');
delete_option('mowsterG_text_previous_page');
delete_site_option('mowsterG_text_previous_page');
delete_option('mowsterG_text_next_page');
delete_site_option('mowsterG_text_next_page');
delete_option('mowsterG_end_size');
delete_site_option('mowsterG_end_size');
delete_option('mowsterG_mid_size');
delete_site_option('mowsterG_mid_size');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mowsterG_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mowsterG_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mowsterG_user_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mowsterG_user_access' ) );

