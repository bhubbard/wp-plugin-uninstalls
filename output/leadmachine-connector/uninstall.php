<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leadmachine_gf_forms');
delete_site_option('leadmachine_gf_forms');
delete_option('leadmachine_company_id');
delete_site_option('leadmachine_company_id');
delete_option('leadmachine_api_key');
delete_site_option('leadmachine_api_key');
delete_option('leadmachine_api_url');
delete_site_option('leadmachine_api_url');
delete_option('leadmachine_form_title');
delete_site_option('leadmachine_form_title');
delete_option('leadmachine_form_description');
delete_site_option('leadmachine_form_description');
delete_option('leadmachine_button_text');
delete_site_option('leadmachine_button_text');
delete_option('leadmachine_button_color');
delete_site_option('leadmachine_button_color');
delete_option('leadmachine_background_color');
delete_site_option('leadmachine_background_color');
delete_option('leadmachine_title_color');
delete_site_option('leadmachine_title_color');
delete_option('leadmachine_description_color');
delete_site_option('leadmachine_description_color');
delete_option('leadmachine_label_color');
delete_site_option('leadmachine_label_color');
delete_option('leadmachine_input_background');
delete_site_option('leadmachine_input_background');
delete_option('leadmachine_input_border_color');
delete_site_option('leadmachine_input_border_color');
delete_option('leadmachine_input_text_color');
delete_site_option('leadmachine_input_text_color');
delete_option('leadmachine_success_message');
delete_site_option('leadmachine_success_message');
delete_option('leadmachine_gf_enabled');
delete_site_option('leadmachine_gf_enabled');
delete_option('leadmachine_gf_default_tags');
delete_site_option('leadmachine_gf_default_tags');
delete_option('leadmachine_post_sync_enabled');
delete_site_option('leadmachine_post_sync_enabled');
delete_option('leadmachine_post_sync_categories');
delete_site_option('leadmachine_post_sync_categories');
delete_option('leadmachine_newsletter_title');
delete_site_option('leadmachine_newsletter_title');
delete_option('leadmachine_newsletter_description');
delete_site_option('leadmachine_newsletter_description');
delete_option('leadmachine_newsletter_button_text');
delete_site_option('leadmachine_newsletter_button_text');
delete_option('leadmachine_newsletter_success_message');
delete_site_option('leadmachine_newsletter_success_message');
delete_option('leadmachine_newsletter_optin_text');
delete_site_option('leadmachine_newsletter_optin_text');
delete_option('leadmachine_newsletter_name_label');
delete_site_option('leadmachine_newsletter_name_label');
delete_option('leadmachine_newsletter_email_label');
delete_site_option('leadmachine_newsletter_email_label');
delete_option('leadmachine_categories_last_sync');
delete_site_option('leadmachine_categories_last_sync');
delete_option('leadmachine_posts_last_sync');
delete_site_option('leadmachine_posts_last_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_leadmachine_synced_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_leadmachine_synced_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_leadmachine_synced_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_leadmachine_synced_at' ) );

