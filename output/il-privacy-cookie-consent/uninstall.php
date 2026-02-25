<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ilpramco_salt');
delete_site_option('ilpramco_salt');
delete_option('ilpramco_enable_forms_consent');
delete_site_option('ilpramco_enable_forms_consent');
delete_option('ilpramco_policy_page_id');
delete_site_option('ilpramco_policy_page_id');
delete_option('ilpramco_position');
delete_site_option('ilpramco_position');
delete_option('ilpramco_language');
delete_site_option('ilpramco_language');
delete_option('ilpramco_primary_color');
delete_site_option('ilpramco_primary_color');
delete_option('ilpramco_respect_dnt');
delete_site_option('ilpramco_respect_dnt');
delete_option('ilpramco_policy_version');
delete_site_option('ilpramco_policy_version');
delete_option('ilpramco_banner_title');
delete_site_option('ilpramco_banner_title');
delete_option('ilpramco_banner_text');
delete_site_option('ilpramco_banner_text');
delete_option('ilpramco_accept_all_text');
delete_site_option('ilpramco_accept_all_text');
delete_option('ilpramco_reject_text');
delete_site_option('ilpramco_reject_text');
delete_option('ilpramco_preferences_text');
delete_site_option('ilpramco_preferences_text');
delete_option('ilpramco_modal_title');
delete_site_option('ilpramco_modal_title');
delete_option('ilpramco_save_preferences_text');
delete_site_option('ilpramco_save_preferences_text');
delete_option('ilpramco_categories');
delete_site_option('ilpramco_categories');
delete_option('ilpramco_script_mapping');
delete_site_option('ilpramco_script_mapping');
delete_option('ilpramco_cookies_catalog');
delete_site_option('ilpramco_cookies_catalog');
delete_option('ilpramco_policy_data');
delete_site_option('ilpramco_policy_data');
delete_option('ilpramco_custom_content');
delete_site_option('ilpramco_custom_content');
delete_option('ilpramco_use_custom_content');
delete_site_option('ilpramco_use_custom_content');
delete_option('ilpramco_retention_days');
delete_site_option('ilpramco_retention_days');
delete_option('ilpramco_enable_pattern_wrapper');
delete_site_option('ilpramco_enable_pattern_wrapper');
delete_option('ilpramco_keep_logs_on_uninstall');
delete_site_option('ilpramco_keep_logs_on_uninstall');

// Delete Transients
delete_transient('ilpramco_activation_notice');
delete_site_transient('ilpramco_activation_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'il_marketing_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'il_marketing_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'il_marketing_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'il_marketing_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'il_marketing_consent_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'il_marketing_consent_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'il_marketing_consent_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'il_marketing_consent_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'il_marketing_consent_revoked_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'il_marketing_consent_revoked_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'il_marketing_consent_revoked_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'il_marketing_consent_revoked_date' ) );

