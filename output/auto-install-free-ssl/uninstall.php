<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aifs_return_array_step1_manually');
delete_site_option('aifs_return_array_step1_manually');
delete_option('aifs_number_of_ssl_generated');
delete_site_option('aifs_number_of_ssl_generated');
delete_option('aifs_is_generated_ssl_installed');
delete_site_option('aifs_is_generated_ssl_installed');
delete_option('aifs_is_admin_email_invalid');
delete_site_option('aifs_is_admin_email_invalid');
delete_option('aifs_log_all_ca_server_response');
delete_site_option('aifs_log_all_ca_server_response');
delete_option('basic_settings_auto_install_free_ssl');
delete_site_option('basic_settings_auto_install_free_ssl');
delete_option('aifs_display_free_premium_offer');
delete_site_option('aifs_display_free_premium_offer');
delete_option('aifs_display_discount_offer_existing_users');
delete_site_option('aifs_display_discount_offer_existing_users');
delete_option('aifs_admin_notice_if_cpanel_connection_fails');
delete_site_option('aifs_admin_notice_if_cpanel_connection_fails');
delete_option('aifs_admin_notice_display_counter');
delete_site_option('aifs_admin_notice_display_counter');
delete_option('aifs_enable_ssl_renewal_reminder');
delete_site_option('aifs_enable_ssl_renewal_reminder');
delete_option('aifs_renew_ssl_later_requested_timestamp');
delete_site_option('aifs_renew_ssl_later_requested_timestamp');
delete_option('aifs_display_review');
delete_site_option('aifs_display_review');
delete_option('all_domains_auto_install_free_ssl');
delete_site_option('all_domains_auto_install_free_ssl');
delete_option('exclude_domains_auto_install_free_ssl');
delete_site_option('exclude_domains_auto_install_free_ssl');
delete_option('dns_provider_auto_install_free_ssl');
delete_site_option('dns_provider_auto_install_free_ssl');
delete_option('add_cron_job_auto_install_free_ssl');
delete_site_option('add_cron_job_auto_install_free_ssl');
delete_option('cpanel_settings_auto_install_free_ssl');
delete_site_option('cpanel_settings_auto_install_free_ssl');
delete_option('aifs_comparison_table_promo_start_time');
delete_site_option('aifs_comparison_table_promo_start_time');
delete_option('aifs_force_ssl');
delete_site_option('aifs_force_ssl');
delete_option('aifs_revert_http_nonce');
delete_site_option('aifs_revert_http_nonce');
delete_option('aifs_ssl_installed_on_this_website');
delete_site_option('aifs_ssl_installed_on_this_website');
delete_option('aifs_plan_selected');
delete_site_option('aifs_plan_selected');
delete_option('aifs_generate_ssl_manually');
delete_site_option('aifs_generate_ssl_manually');
delete_option('aifs_free_plan_selected');
delete_site_option('aifs_free_plan_selected');
delete_option('aifs_delete_plugin_data_on_deactivation');
delete_site_option('aifs_delete_plugin_data_on_deactivation');
delete_option('aifs_premium_plan_selected');
delete_site_option('aifs_premium_plan_selected');
delete_option('aifs_selected_verification_method_dns01');
delete_site_option('aifs_selected_verification_method_dns01');
delete_option('aifs_verify_ip_for_all_domain_alias');
delete_site_option('aifs_verify_ip_for_all_domain_alias');
delete_option('aifs_ssl_renewal_reminder_email_last_sent_timestamp');
delete_site_option('aifs_ssl_renewal_reminder_email_last_sent_timestamp');
delete_option('aifs_user_since_free_only_version');
delete_site_option('aifs_user_since_free_only_version');
delete_option('aifs_domains_to_revoke_cert');
delete_site_option('aifs_domains_to_revoke_cert');
delete_option('aifs_flash_notices');
delete_site_option('aifs_flash_notices');
delete_option('aifs_ca_terms_of_service_url');
delete_site_option('aifs_ca_terms_of_service_url');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('aifs_display_review_init');
wp_clear_scheduled_hook('aifs_display_announcement_init');
wp_clear_scheduled_hook('aifs_display_discount_offer_init');
wp_clear_scheduled_hook('aifs_do_this_daily');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

