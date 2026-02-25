<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsas_maxmind_license');
delete_site_option('bsas_maxmind_license');
delete_option('bsas_mu_initialized_lite');
delete_site_option('bsas_mu_initialized_lite');
delete_option('bsas_retention_days');
delete_site_option('bsas_retention_days');
delete_option('bsas_transient_version');
delete_site_option('bsas_transient_version');
delete_option('bsas_enable_rate_limit');
delete_site_option('bsas_enable_rate_limit');
delete_option('bsas_rate_limit');
delete_site_option('bsas_rate_limit');
delete_option('bsas_log_mode');
delete_site_option('bsas_log_mode');
delete_option('bsas_store_plain_ip');
delete_site_option('bsas_store_plain_ip');
delete_option('bsas_hash_ips');
delete_site_option('bsas_hash_ips');
delete_option('bsas_enabled');
delete_site_option('bsas_enabled');
delete_option('bsas_block_rest_api');
delete_site_option('bsas_block_rest_api');
delete_option('bsas_allow_crawlers');
delete_site_option('bsas_allow_crawlers');
delete_option('bsas_strict_asn');
delete_site_option('bsas_strict_asn');
delete_option('bsas_unknown_policy');
delete_site_option('bsas_unknown_policy');
delete_option('bsas_blocked_countries');
delete_site_option('bsas_blocked_countries');
delete_option('bsas_block_heading');
delete_site_option('bsas_block_heading');
delete_option('bsas_install_time');
delete_site_option('bsas_install_time');
delete_option('bsas_promo_dismissed_at');
delete_site_option('bsas_promo_dismissed_at');
delete_option('bsas_review_never_show');
delete_site_option('bsas_review_never_show');
delete_option('bsas_review_dismissed_at');
delete_site_option('bsas_review_dismissed_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('bsas_weekly_mm_update_lite');
wp_clear_scheduled_hook('bsas_daily_maintenance_lite');

