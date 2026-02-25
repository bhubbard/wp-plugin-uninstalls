<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oopspamantispam_settings');
delete_site_option('oopspamantispam_settings');
delete_option('oopspamantispam_contextai_settings');
delete_site_option('oopspamantispam_contextai_settings');
delete_option('oopspam_rt_db_version');
delete_site_option('oopspam_rt_db_version');
delete_option('oopspam_db_version');
delete_site_option('oopspam_db_version');
delete_option('manual_moderation_settings');
delete_site_option('manual_moderation_settings');
delete_option('oopspam_admin_emails');
delete_site_option('oopspam_admin_emails');
delete_option('oopspamantispam_misc_settings');
delete_site_option('oopspamantispam_misc_settings');
delete_option('oopspamantispam_privacy_settings');
delete_site_option('oopspamantispam_privacy_settings');
delete_option('oopspamantispam_ratelimit_settings');
delete_site_option('oopspamantispam_ratelimit_settings');
delete_option('woocommerce_feature_order_attribution_enabled');
delete_site_option('woocommerce_feature_order_attribution_enabled');
delete_option('oopspamantispam_privacy_migration_completed');
delete_site_option('oopspamantispam_privacy_migration_completed');
delete_option('oopspam_wizard_completed');
delete_site_option('oopspam_wizard_completed');
delete_option('oopspamantispam_ipfiltering_settings');
delete_site_option('oopspamantispam_ipfiltering_settings');
delete_option('oopspam_countryallowlist');
delete_site_option('oopspam_countryallowlist');
delete_option('oopspam_countryblocklist');
delete_site_option('oopspam_countryblocklist');
delete_option('oopspam_country_always_allow');
delete_site_option('oopspam_country_always_allow');
delete_option('oopspam_languageallowlist');
delete_site_option('oopspam_languageallowlist');
delete_option('over_rate_limit');
delete_site_option('over_rate_limit');
delete_option('oopspam_proxy_notice_dismissed');
delete_site_option('oopspam_proxy_notice_dismissed');
delete_option('oopspam-activation-date');
delete_site_option('oopspam-activation-date');
delete_option('oopspam_is_check_for_length');
delete_site_option('oopspam_is_check_for_length');

// Delete Transients
delete_transient('oopspam_bulk_processed_ids');
delete_site_transient('oopspam_bulk_processed_ids');
delete_transient('oopspam_activation_redirect');
delete_site_transient('oopspam_activation_redirect');
delete_transient('oopspam_options_redirect');
delete_site_transient('oopspam_options_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('oopspam_cleanup_ham_entries_cron');
wp_clear_scheduled_hook('oopspam_cleanup_spam_entries_cron');
wp_clear_scheduled_hook('oopspam_cleanup_ratelimit_entries_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

