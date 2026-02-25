<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpchat_entitlement_token');
delete_site_option('wpchat_entitlement_token');
delete_option('wpchat_entitlement_hash');
delete_site_option('wpchat_entitlement_hash');
delete_option('wpchat_entitlement_grace_start');
delete_site_option('wpchat_entitlement_grace_start');
delete_option('wpchat_license_expired_notice');
delete_site_option('wpchat_license_expired_notice');
delete_option('wpchat_license_invalid_notice');
delete_site_option('wpchat_license_invalid_notice');
delete_option('wpchat_license_expiring_notice');
delete_site_option('wpchat_license_expiring_notice');
delete_option('wpchat_license_failure_count');
delete_site_option('wpchat_license_failure_count');
delete_option('wpchat_license_last_failure');
delete_site_option('wpchat_license_last_failure');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpchat_faqs_seeded');
delete_site_option('wpchat_faqs_seeded');
delete_option('wpchat_funnels_visibility_map');
delete_site_option('wpchat_funnels_visibility_map');
delete_option('wpchat_needs_pro_migrations');
delete_site_option('wpchat_needs_pro_migrations');
delete_option('wpchat_db_version');
delete_site_option('wpchat_db_version');
delete_option('wpchat_license_key');
delete_site_option('wpchat_license_key');
delete_option('wpchat_license_status');
delete_site_option('wpchat_license_status');
delete_option('wpchat_keys_last_refresh');
delete_site_option('wpchat_keys_last_refresh');

// Delete Transients
delete_transient('wpchat_available_platforms');
delete_site_transient('wpchat_available_platforms');
delete_transient('wpchat_pro_migrations_verified');
delete_site_transient('wpchat_pro_migrations_verified');
delete_transient('wpchat_activation_redirect');
delete_site_transient('wpchat_activation_redirect');
delete_transient('wpchat_deactivated_notice_id');
delete_site_transient('wpchat_deactivated_notice_id');
delete_transient('wpchat_plugin_info');
delete_site_transient('wpchat_plugin_info');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wpchat_public_keys_cache');
delete_site_transient('wpchat_public_keys_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpchat_analytics_process_aggregates');
wp_clear_scheduled_hook('wpchat_analytics_quick_aggregation');
wp_clear_scheduled_hook('wpchat_analytics_cleanup_old_data');
wp_clear_scheduled_hook('wp_scheduled_delete');
wp_clear_scheduled_hook('wpchat_grace_period_check');
wp_clear_scheduled_hook('wpchat_vector_generation_cron');
wp_clear_scheduled_hook('wpchat_embedding_usage_stats_cron');

