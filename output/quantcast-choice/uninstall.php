<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qc_choice_cmp_utid');
delete_site_option('qc_choice_cmp_utid');
delete_option('qc_choice_cmp_datalayer_push');
delete_site_option('qc_choice_cmp_datalayer_push');
delete_option('qc_choice_cmp_ccpa_wp_footer');
delete_site_option('qc_choice_cmp_ccpa_wp_footer');
delete_option('qc_choice_vendor_list_version');
delete_site_option('qc_choice_vendor_list_version');
delete_option('qc_choice_language');
delete_site_option('qc_choice_language');
delete_option('qc_choice_auto_localize');
delete_site_option('qc_choice_auto_localize');
delete_option('qc_choice_display_ui');
delete_site_option('qc_choice_display_ui');
delete_option('qc_choice_display_layout');
delete_site_option('qc_choice_display_layout');
delete_option('qc_choice_min_days_between_ui_displays');
delete_site_option('qc_choice_min_days_between_ui_displays');
delete_option('qc_choice_non_consent_display_frequency');
delete_site_option('qc_choice_non_consent_display_frequency');
delete_option('qc_choice_post_consent_page');
delete_site_option('qc_choice_post_consent_page');
delete_option('qc_choice_publisher_name');
delete_site_option('qc_choice_publisher_name');
delete_option('qc_choice_publisher_logo');
delete_site_option('qc_choice_publisher_logo');
delete_option('qc_choice_initial_screen_title_text');
delete_site_option('qc_choice_initial_screen_title_text');
delete_option('qc_choice_initial_screen_body_text');
delete_site_option('qc_choice_initial_screen_body_text');
delete_option('qc_choice_initial_screen_reject_button_text');
delete_site_option('qc_choice_initial_screen_reject_button_text');
delete_option('qc_choice_initial_screen_no_option');
delete_site_option('qc_choice_initial_screen_no_option');
delete_option('qc_choice_initial_screen_accept_button_text');
delete_site_option('qc_choice_initial_screen_accept_button_text');
delete_option('qc_choice_initial_screen_purpose_link_text');
delete_site_option('qc_choice_initial_screen_purpose_link_text');
delete_option('qc_choice_purpose_screen_header_title_text');
delete_site_option('qc_choice_purpose_screen_header_title_text');
delete_option('qc_choice_purpose_screen_title_text');
delete_site_option('qc_choice_purpose_screen_title_text');
delete_option('qc_choice_purpose_screen_body_text');
delete_site_option('qc_choice_purpose_screen_body_text');
delete_option('qc_choice_purpose_screen_enable_all_button_text');
delete_site_option('qc_choice_purpose_screen_enable_all_button_text');
delete_option('qc_choice_purpose_screen_vendor_link_text');
delete_site_option('qc_choice_purpose_screen_vendor_link_text');
delete_option('qc_choice_purpose_screen_cancel_button_text');
delete_site_option('qc_choice_purpose_screen_cancel_button_text');
delete_option('qc_choice_purpose_screen_save_and_exit_button_text');
delete_site_option('qc_choice_purpose_screen_save_and_exit_button_text');
delete_option('qc_choice_vendor_screen_title_text');
delete_site_option('qc_choice_vendor_screen_title_text');
delete_option('qc_choice_vendor_screen_body_text');
delete_site_option('qc_choice_vendor_screen_body_text');
delete_option('qc_choice_vendor_screen_accept_all_button_text');
delete_site_option('qc_choice_vendor_screen_accept_all_button_text');
delete_option('qc_choice_vendor_screen_reject_all_button_text');
delete_site_option('qc_choice_vendor_screen_reject_all_button_text');
delete_option('qc_choice_vendor_screen_purposes_link_text');
delete_site_option('qc_choice_vendor_screen_purposes_link_text');
delete_option('qc_choice_vendor_screen_cancel_button_text');
delete_site_option('qc_choice_vendor_screen_cancel_button_text');
delete_option('qc_choice_vendor_screen_save_and_exit_button_text');
delete_site_option('qc_choice_vendor_screen_save_and_exit_button_text');
delete_option('qc_choice_vendors');
delete_site_option('qc_choice_vendors');
delete_option('qc_choice_initial_screen_custom_link_1_text');
delete_site_option('qc_choice_initial_screen_custom_link_1_text');
delete_option('qc_choice_initial_screen_custom_link_1_url');
delete_site_option('qc_choice_initial_screen_custom_link_1_url');
delete_option('qc_choice_initial_screen_custom_link_2_text');
delete_site_option('qc_choice_initial_screen_custom_link_2_text');
delete_option('qc_choice_initial_screen_custom_link_2_url');
delete_site_option('qc_choice_initial_screen_custom_link_2_url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

