<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fspi_inquiry_form_fields');
delete_site_option('_fspi_inquiry_form_fields');
delete_option('_fspi_server_url');
delete_site_option('_fspi_server_url');
delete_option('_fspi_license_settings');
delete_site_option('_fspi_license_settings');
delete_option('_fspi_email_heading_text');
delete_site_option('_fspi_email_heading_text');
delete_option('_fspi_email_footer_text');
delete_site_option('_fspi_email_footer_text');
delete_option('_fspi_email_from');
delete_site_option('_fspi_email_from');
delete_option('_fspi_email_from_address');
delete_site_option('_fspi_email_from_address');
delete_option('_fspi_customer_email_sub');
delete_site_option('_fspi_customer_email_sub');
delete_option('_fspi_customer_email_body_text');
delete_site_option('_fspi_customer_email_body_text');
delete_option('_fspi_email_admin');
delete_site_option('_fspi_email_admin');
delete_option('_fspi_admin_email_sub');
delete_site_option('_fspi_admin_email_sub');
delete_option('_fspi_admin_email_body_text');
delete_site_option('_fspi_admin_email_body_text');
delete_option('_fspi_inquiry_form_open_in_popup');
delete_site_option('_fspi_inquiry_form_open_in_popup');
delete_option('_fspi_product_currency');
delete_site_option('_fspi_product_currency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fs_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fs_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fs_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fs_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fs_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fs_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fs_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fs_product_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fs_product_selling_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fs_product_selling_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fs_product_selling_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fs_product_selling_price' ) );

