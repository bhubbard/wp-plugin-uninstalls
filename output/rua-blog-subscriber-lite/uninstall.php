<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rua_blog_subscriber_db_version');
delete_site_option('rua_blog_subscriber_db_version');
delete_option('rua_site_name');
delete_site_option('rua_site_name');
delete_option('rua_site_url');
delete_site_option('rua_site_url');
delete_option('rua_site_contact_form');
delete_site_option('rua_site_contact_form');
delete_option('rua_company_address');
delete_site_option('rua_company_address');
delete_option('rua_company_city');
delete_site_option('rua_company_city');
delete_option('rua_company_state');
delete_site_option('rua_company_state');
delete_option('rua_company_zip');
delete_site_option('rua_company_zip');
delete_option('rua_company_phone_number');
delete_site_option('rua_company_phone_number');
delete_option('rua_from_email_address');
delete_site_option('rua_from_email_address');
delete_option('rua_email_subject');
delete_site_option('rua_email_subject');
delete_option('rua_email_logo');
delete_site_option('rua_email_logo');
delete_option('rua_form_header');
delete_site_option('rua_form_header');
delete_option('rua_custom_message');
delete_site_option('rua_custom_message');
delete_option('rua_button_text');
delete_site_option('rua_button_text');
delete_option('rua_blog_url');
delete_site_option('rua_blog_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

