<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hustle_version');
delete_site_option('hustle_version');
delete_option('hustle_migrations');
delete_site_option('hustle_migrations');
delete_option('hustle_previous_version');
delete_site_option('hustle_previous_version');
delete_option('hustle_free_deactivated');
delete_site_option('hustle_free_deactivated');
delete_option('hustle_free_activated');
delete_site_option('hustle_free_activated');
delete_option('wdp_un_profile_data');
delete_site_option('wdp_un_profile_data');
delete_option('hustle_provider_aweber_settings');
delete_site_option('hustle_provider_aweber_settings');
delete_option('hustle_provider_infusionsoft_settings');
delete_site_option('hustle_provider_infusionsoft_settings');
delete_option('hustle_custom_palettes');
delete_site_option('hustle_custom_palettes');
delete_option('hustle-hide_tutorials');
delete_site_option('hustle-hide_tutorials');
delete_option('yith_wcfm_main_page_id');
delete_site_option('yith_wcfm_main_page_id');
delete_option('hustle_unsubscribe_page');
delete_site_option('hustle_unsubscribe_page');
delete_option('hustle_color_index');
delete_site_option('hustle_color_index');
delete_option('hustle_database_version');
delete_site_option('hustle_database_version');
delete_option('hustle_unsubscribe_nonces');
delete_site_option('hustle_unsubscribe_nonces');
delete_option('hustle_30_migration_data');
delete_site_option('hustle_30_migration_data');
delete_option('hustle_settings');
delete_site_option('hustle_settings');
delete_option('hustle_ss_refresh_counters');
delete_site_option('hustle_ss_refresh_counters');
delete_option('wpoi-county-id-map');
delete_site_option('wpoi-county-id-map');
delete_option('hustle_custom_nonce');
delete_site_option('hustle_custom_nonce');
delete_option('hustle_activated_flag');
delete_site_option('hustle_activated_flag');
delete_option('hustle_new_welcome_notice_dismissed');
delete_site_option('hustle_new_welcome_notice_dismissed');
delete_option('hustle_popup_migrated');
delete_site_option('hustle_popup_migrated');
delete_option('hustle_global_unsubscription_settings');
delete_site_option('hustle_global_unsubscription_settings');
delete_option('hustle_global_email_settings');
delete_site_option('hustle_global_email_settings');
delete_option('widget_hustle_module_widget');
delete_site_option('widget_hustle_module_widget');
delete_option('opt_in_database_version');
delete_site_option('opt_in_database_version');
delete_option('hustle_notice_stop_support_m2');
delete_site_option('hustle_notice_stop_support_m2');
delete_option('hustle_activated_providers');
delete_site_option('hustle_activated_providers');
delete_option('hustle_opt-in-constant_contact-token');
delete_site_option('hustle_opt-in-constant_contact-token');
delete_option('hustle_provider_sendinblue_settings');
delete_site_option('hustle_provider_sendinblue_settings');
delete_option('hustle_provider_sendinblue_version');
delete_site_option('hustle_provider_sendinblue_version');
delete_option('hustle_40_migration_offset');
delete_site_option('hustle_40_migration_offset');
delete_option('hustle_430_migration_offset');
delete_site_option('hustle_430_migration_offset');
delete_option('hustle_430_modules_to_migrate');
delete_site_option('hustle_430_modules_to_migrate');
delete_option('hustle_441_migration_offset');
delete_site_option('hustle_441_migration_offset');
delete_option('wdev-frash');
delete_site_option('wdev-frash');

// Delete Transients
delete_transient('hustle_wp_widget_daily_stats_7');
delete_site_transient('hustle_wp_widget_daily_stats_7');
delete_transient('hustle_wp_widget_daily_stats_30');
delete_site_transient('hustle_wp_widget_daily_stats_30');
delete_transient('hustle_wp_widget_daily_stats_90');
delete_site_transient('hustle_wp_widget_daily_stats_90');
delete_transient('hustle_aweber_code_verifier');
delete_site_transient('hustle_aweber_code_verifier');
delete_transient('hustle_constantcontact_auth_keys');
delete_site_transient('hustle_constantcontact_auth_keys');

// Clear Cron Jobs
wp_clear_scheduled_hook('hustle_send_email');
wp_clear_scheduled_hook('hustle_aweber_token_refresh');
wp_clear_scheduled_hook('hustle_general_data_protection_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

