<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_idt_settings_synced');
delete_site_option('wc_settings_idt_settings_synced');
delete_option('idt_version');
delete_site_option('idt_version');
delete_option('wc_settings_idt_button_text');
delete_site_option('wc_settings_idt_button_text');
delete_option('wc_settings_idt_button_text_single');
delete_site_option('wc_settings_idt_button_text_single');
delete_option('IDT_flash_notices');
delete_site_option('IDT_flash_notices');
delete_option('wc_settings_idt_connect_code');
delete_site_option('wc_settings_idt_connect_code');
delete_option('wc_settings_idt_api_key');
delete_site_option('wc_settings_idt_api_key');
delete_option('wc_settings_idt_editor_domain');
delete_site_option('wc_settings_idt_editor_domain');
delete_option('IDT_pdf_request_quota_reached');
delete_site_option('IDT_pdf_request_quota_reached');
delete_option('wc_settings_idt_guest_mode');
delete_site_option('wc_settings_idt_guest_mode');
delete_option('wc_settings_idt_display_project_details');
delete_site_option('wc_settings_idt_display_project_details');
delete_option('IDT_elementor_mode');
delete_site_option('IDT_elementor_mode');
delete_option('idt_elementor_notice_displayed');
delete_site_option('idt_elementor_notice_displayed');
delete_option('idt_elementor_mode');
delete_site_option('idt_elementor_mode');
delete_option('wc_settings_idt_print_api_client_id');
delete_site_option('wc_settings_idt_print_api_client_id');
delete_option('wc_settings_idt_print_api_secret');
delete_site_option('wc_settings_idt_print_api_secret');
delete_option('wc_settings_idt_print_api_status');
delete_site_option('wc_settings_idt_print_api_status');
delete_option('idt_firstrun_completed');
delete_site_option('idt_firstrun_completed');
delete_option('wc_settings_idt_login_cookie_updated');
delete_site_option('wc_settings_idt_login_cookie_updated');
delete_option('wc_settings_idt_printapi_environment');
delete_site_option('wc_settings_idt_printapi_environment');
delete_option('wc_settings_idt_logging_enabled');
delete_site_option('wc_settings_idt_logging_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('idt_run_output_binder');
wp_clear_scheduled_hook('idt_run_output_binder_by_guid');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'idt_price_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'idt_price_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'idt_price_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'idt_price_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'idt_default_amount_of_pages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'idt_default_amount_of_pages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'idt_default_amount_of_pages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'idt_default_amount_of_pages' ) );

