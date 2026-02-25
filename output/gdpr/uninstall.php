<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdpr_requests');
delete_site_option('gdpr_requests');
delete_option('gdpr_cookie_popup_content');
delete_site_option('gdpr_cookie_popup_content');
delete_option('gdpr_consent_types');
delete_site_option('gdpr_consent_types');
delete_option('gdpr_disable_css');
delete_site_option('gdpr_disable_css');
delete_option('gdpr_enable_telemetry_tracker');
delete_site_option('gdpr_enable_telemetry_tracker');
delete_option('gdpr_use_recaptcha');
delete_site_option('gdpr_use_recaptcha');
delete_option('gdpr_recaptcha_site_key');
delete_site_option('gdpr_recaptcha_site_key');
delete_option('gdpr_recaptcha_secret_key');
delete_site_option('gdpr_recaptcha_secret_key');
delete_option('gdpr_add_consent_checkboxes_registration');
delete_site_option('gdpr_add_consent_checkboxes_registration');
delete_option('gdpr_add_consent_checkboxes_checkout');
delete_site_option('gdpr_add_consent_checkboxes_checkout');
delete_option('gdpr_refresh_after_preferences_update');
delete_site_option('gdpr_refresh_after_preferences_update');
delete_option('gdpr_enable_privacy_bar');
delete_site_option('gdpr_enable_privacy_bar');
delete_option('gdpr_display_cookie_categories_in_bar');
delete_site_option('gdpr_display_cookie_categories_in_bar');
delete_option('gdpr_hide_from_bots');
delete_site_option('gdpr_hide_from_bots');
delete_option('gdpr_reconsent_template');
delete_site_option('gdpr_reconsent_template');
delete_option('gdpr_policies_updated');
delete_site_option('gdpr_policies_updated');
delete_option('gdpr_data_breach_initiated');
delete_site_option('gdpr_data_breach_initiated');
delete_option('gdpr_email_limit');
delete_site_option('gdpr_email_limit');
delete_option('gdpr_deletion_needs_review');
delete_site_option('gdpr_deletion_needs_review');
delete_option('gdpr_cookie_banner_content');
delete_site_option('gdpr_cookie_banner_content');
delete_option('gdpr_cookie_privacy_excerpt');
delete_site_option('gdpr_cookie_privacy_excerpt');

// Delete Transients
delete_transient('gdpr_updated');
delete_site_transient('gdpr_updated');
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('clean_gdpr_data_breach_request');
wp_clear_scheduled_hook('send_data_breach_emails');
wp_clear_scheduled_hook('clean_gdpr_user_request_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gdpr_consents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gdpr_consents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gdpr_consents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gdpr_consents' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gdpr_audit_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gdpr_audit_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gdpr_audit_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gdpr_audit_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'panels_data' ) );

