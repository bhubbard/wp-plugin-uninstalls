<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('ssl_atlas_ssl_activated');
delete_site_option('ssl_atlas_ssl_activated');
delete_option('ssl_atlas_settings_stage');
delete_site_option('ssl_atlas_settings_stage');
delete_option('ssl_atlas_cert_details');
delete_site_option('ssl_atlas_cert_details');
delete_option('ssl_atlas_stackpath_auto_purge');
delete_site_option('ssl_atlas_stackpath_auto_purge');
delete_option('ssl_atlas_stackpath_host_ip');
delete_site_option('ssl_atlas_stackpath_host_ip');
delete_option('ssl_atlas_stackpath_reactivate');
delete_site_option('ssl_atlas_stackpath_reactivate');
delete_option('ssl_atlas_domain_verification_variant');
delete_site_option('ssl_atlas_domain_verification_variant');
delete_option('ssl_atlas_domain_verified');
delete_site_option('ssl_atlas_domain_verified');
delete_option('ssl_atlas_dns_check_activation');
delete_site_option('ssl_atlas_dns_check_activation');
delete_option('ssl_atlas_show_debug_url');
delete_site_option('ssl_atlas_show_debug_url');
delete_option('ssl_atlas_debug_url');
delete_site_option('ssl_atlas_debug_url');
delete_option('ssl_atlas_enable_debug');
delete_site_option('ssl_atlas_enable_debug');
delete_option('ssl_atlas_include_wwww');
delete_site_option('ssl_atlas_include_wwww');
delete_option('ssl_atlas_email');
delete_site_option('ssl_atlas_email');
delete_option('ssl_atlas_cpanel_username');
delete_site_option('ssl_atlas_cpanel_username');
delete_option('ssl_atlas_cpanel_password');
delete_site_option('ssl_atlas_cpanel_password');
delete_option('ssl_atlas_last_auth_api_call');
delete_site_option('ssl_atlas_last_auth_api_call');
delete_option('ssl_atlas_ssl_activated_date');
delete_site_option('ssl_atlas_ssl_activated_date');
delete_option('ssl_atlas_review_reminder');
delete_site_option('ssl_atlas_review_reminder');
delete_option('ssl_atlas_certificate_60_days');
delete_site_option('ssl_atlas_certificate_60_days');
delete_option('ssl_atlas_certificate_90_days');
delete_site_option('ssl_atlas_certificate_90_days');
delete_option('ssl_atlas_base_domain');
delete_site_option('ssl_atlas_base_domain');
delete_option('ssl_atlas_stackpath_bypass_cache');
delete_site_option('ssl_atlas_stackpath_bypass_cache');
delete_option('ssl_atlas_enable_301_htaccess_redirect');
delete_site_option('ssl_atlas_enable_301_htaccess_redirect');
delete_option('ssl_atlas_lock_htaccess_file');
delete_site_option('ssl_atlas_lock_htaccess_file');
delete_option('ssl_atlas_domains');
delete_site_option('ssl_atlas_domains');
delete_option('ssl_atlas_certificate_60_days_email_sent');
delete_site_option('ssl_atlas_certificate_60_days_email_sent');
delete_option('ssl_atlas_certificate_90_days_email_sent');
delete_site_option('ssl_atlas_certificate_90_days_email_sent');
delete_option('ssl_atlas_ssl_check_status');
delete_site_option('ssl_atlas_ssl_check_status');
delete_option('ssl_atlas_activated');
delete_site_option('ssl_atlas_activated');
delete_option('ssl_atlas_activated_date');
delete_site_option('ssl_atlas_activated_date');
delete_option('ssl_atlas_deactivated');
delete_site_option('ssl_atlas_deactivated');
delete_option('base_domain_name');
delete_site_option('base_domain_name');
delete_option('ssl_atlas_fix_cloudflare');
delete_site_option('ssl_atlas_fix_cloudflare');
delete_option('ssl_atlas_domainconnect_status');
delete_site_option('ssl_atlas_domainconnect_status');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('sslatlas-debug');
delete_site_transient('sslatlas-debug');

// Clear Cron Jobs
wp_clear_scheduled_hook('ssl_atlas_60_days_email');
wp_clear_scheduled_hook('ssl_atlas_90_days_email');

