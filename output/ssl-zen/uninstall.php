<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('ssl_zen_settings_stage');
delete_site_option('ssl_zen_settings_stage');
delete_option('ssl_zen_cert_details');
delete_site_option('ssl_zen_cert_details');
delete_option('ssl_zen_domain_verification_variant');
delete_site_option('ssl_zen_domain_verification_variant');
delete_option('ssl_zen_domain_verified');
delete_site_option('ssl_zen_domain_verified');
delete_option('ssl_zen_dns_check_activation');
delete_site_option('ssl_zen_dns_check_activation');
delete_option('ssl_zen_show_debug_url');
delete_site_option('ssl_zen_show_debug_url');
delete_option('ssl_zen_debug_url');
delete_site_option('ssl_zen_debug_url');
delete_option('ssl_zen_enable_debug');
delete_site_option('ssl_zen_enable_debug');
delete_option('ssl_zen_last_auth_api_call');
delete_site_option('ssl_zen_last_auth_api_call');
delete_option('ssl_zen_ssl_activated');
delete_site_option('ssl_zen_ssl_activated');
delete_option('ssl_zen_ssl_activated_date');
delete_site_option('ssl_zen_ssl_activated_date');
delete_option('ssl_zen_review_reminder');
delete_site_option('ssl_zen_review_reminder');
delete_option('ssl_zen_include_wwww');
delete_site_option('ssl_zen_include_wwww');
delete_option('ssl_zen_domains');
delete_site_option('ssl_zen_domains');
delete_option('ssl_zen_base_domain');
delete_site_option('ssl_zen_base_domain');
delete_option('ssl_zen_email');
delete_site_option('ssl_zen_email');
delete_option('ssl_zen_certificate_60_days');
delete_site_option('ssl_zen_certificate_60_days');
delete_option('ssl_zen_certificate_90_days');
delete_site_option('ssl_zen_certificate_90_days');
delete_option('ssl_zen_certificate_60_days_email_sent');
delete_site_option('ssl_zen_certificate_60_days_email_sent');
delete_option('ssl_zen_certificate_90_days_email_sent');
delete_site_option('ssl_zen_certificate_90_days_email_sent');
delete_option('ssl_zen_enable_301_htaccess_redirect');
delete_site_option('ssl_zen_enable_301_htaccess_redirect');
delete_option('ssl_zen_lock_htaccess_file');
delete_site_option('ssl_zen_lock_htaccess_file');
delete_option('ssl_zen_ssl_check_status');
delete_site_option('ssl_zen_ssl_check_status');
delete_option('ssl_zen_cpanel_detected');
delete_site_option('ssl_zen_cpanel_detected');
delete_option('ssl_zen_activated');
delete_site_option('ssl_zen_activated');
delete_option('ssl_zen_activated_date');
delete_site_option('ssl_zen_activated_date');
delete_option('ssl_zen_deactivated');
delete_site_option('ssl_zen_deactivated');
delete_option('ssl_zen_keys_dir_name');
delete_site_option('ssl_zen_keys_dir_name');
delete_option('ssl_zen_fix_cloudflare');
delete_site_option('ssl_zen_fix_cloudflare');
delete_option('ssl_zen_domainconnect_status');
delete_site_option('ssl_zen_domainconnect_status');
delete_option('ssl_zen_stackpath_host_ip');
delete_site_option('ssl_zen_stackpath_host_ip');
delete_option('ssl_zen_stackpath_auto_purge');
delete_site_option('ssl_zen_stackpath_auto_purge');
delete_option('ssl_zen_stackpath_bypass_cache');
delete_site_option('ssl_zen_stackpath_bypass_cache');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('sslzen-debug');
delete_site_transient('sslzen-debug');

// Clear Cron Jobs
wp_clear_scheduled_hook('ssl_zen_60_days_email');
wp_clear_scheduled_hook('ssl_zen_90_days_email');

