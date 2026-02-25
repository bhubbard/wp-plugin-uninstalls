<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onetap_settings');
delete_site_option('onetap_settings');
delete_option('apop_localized_labels');
delete_site_option('apop_localized_labels');
delete_option('onetap_install_timestamp');
delete_site_option('onetap_install_timestamp');
delete_option('onetap_review_banner_disabled');
delete_site_option('onetap_review_banner_disabled');
delete_option('onetap_review_banner_next_show');
delete_site_option('onetap_review_banner_next_show');
delete_option('onetap_show_accessibility');
delete_site_option('onetap_show_accessibility');
delete_option('onetap_select_language');
delete_site_option('onetap_select_language');
delete_option('onetap_company_name');
delete_site_option('onetap_company_name');
delete_option('onetap_company_website');
delete_site_option('onetap_company_website');
delete_option('onetap_business_email');
delete_site_option('onetap_business_email');
delete_option('onetap_confirmation_checkbox');
delete_site_option('onetap_confirmation_checkbox');
delete_option('onetap_editor_generator');
delete_site_option('onetap_editor_generator');
delete_option('onetap_license_status');
delete_site_option('onetap_license_status');
delete_option('onetap_modules');
delete_site_option('onetap_modules');
delete_option('onetap_general_settings');
delete_site_option('onetap_general_settings');
delete_option('onetap_localized_labels');
delete_site_option('onetap_localized_labels');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

