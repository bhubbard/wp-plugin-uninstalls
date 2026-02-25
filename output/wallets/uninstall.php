<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wallets_caps_initialized');
delete_site_option('wallets_caps_initialized');
delete_option('wallets_rates_tor_enabled');
delete_site_option('wallets_rates_tor_enabled');
delete_option('wallets_rates_tor_ip');
delete_site_option('wallets_rates_tor_ip');
delete_option('wallets_rates_tor_port');
delete_site_option('wallets_rates_tor_port');
delete_option('wallets_addresses_max_count');
delete_site_option('wallets_addresses_max_count');
delete_option('wallets_disable_cache');
delete_site_option('wallets_disable_cache');
delete_option('wallets_transients_broken');
delete_site_option('wallets_transients_broken');
delete_option('wallets_deposit_cutoff');
delete_site_option('wallets_deposit_cutoff');
delete_option('wallets_shortcodes_in_posts');
delete_site_option('wallets_shortcodes_in_posts');
delete_option('wallets_frontend_vs_amount_decimals');
delete_site_option('wallets_frontend_vs_amount_decimals');
delete_option('wallets_polling_interval');
delete_site_option('wallets_polling_interval');
delete_option('wallets_legacy_json_api');
delete_site_option('wallets_legacy_json_api');
delete_option('wallets_move_spills_users');
delete_site_option('wallets_move_spills_users');
delete_option('wallets_emails_max_batch_size');
delete_site_option('wallets_emails_max_batch_size');
delete_option('wallets_emails_max_recipients_batch_size');
delete_site_option('wallets_emails_max_recipients_batch_size');
delete_option('wallets_confirm_move_user_enabled');
delete_site_option('wallets_confirm_move_user_enabled');
delete_option('wallets_confirm_withdraw_user_enabled');
delete_site_option('wallets_confirm_withdraw_user_enabled');
delete_option('wallets_confirm_redirect_page');
delete_site_option('wallets_confirm_redirect_page');
delete_option('wallets_email_forwarding_enabled');
delete_site_option('wallets_email_forwarding_enabled');
delete_option('wallets_email_error_forwarding_enabled');
delete_site_option('wallets_email_error_forwarding_enabled');
delete_option('wallets_cron_task_timeout');
delete_site_option('wallets_cron_task_timeout');
delete_option('wallets_cron_verbose');
delete_site_option('wallets_cron_verbose');
delete_option('wallets_cron_approve_withdrawals');
delete_site_option('wallets_cron_approve_withdrawals');
delete_option('wallets_withdrawals_max_batch_size');
delete_site_option('wallets_withdrawals_max_batch_size');
delete_option('wallets_moves_max_batch_size');
delete_site_option('wallets_moves_max_batch_size');
delete_option('wallets_cron_aggregate');
delete_site_option('wallets_cron_aggregate');
delete_option('wallets_cron_autocancel');
delete_site_option('wallets_cron_autocancel');
delete_option('wallets_http_timeout');
delete_site_option('wallets_http_timeout');
delete_option('wallets_http_redirects');
delete_site_option('wallets_http_redirects');
delete_option('wallets_http_tor_enabled');
delete_site_option('wallets_http_tor_enabled');
delete_option('wallets_http_tor_ip');
delete_site_option('wallets_http_tor_ip');
delete_option('wallets_http_tor_port');
delete_site_option('wallets_http_tor_port');
delete_option('wallets_rates_vs');
delete_site_option('wallets_rates_vs');
delete_option('wallets_fiat_fixerio_key');
delete_site_option('wallets_fiat_fixerio_key');
delete_option('wallets_fiat_fixerio_currencies');
delete_site_option('wallets_fiat_fixerio_currencies');
delete_option('ds-activation-code');
delete_site_option('ds-activation-code');

// Delete Transients
delete_transient('wallets_transients_test');
delete_site_transient('wallets_transients_test');

// Clear Cron Jobs
wp_clear_scheduled_hook('wallets_cron_tasks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_pointers_dismissed_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_apikey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_apikey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_apikey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_apikey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_admin_approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_admin_approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_admin_approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_admin_approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_wd_counter_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_wd_counter_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_wd_counter_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_wd_counter_day' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_wd_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_wd_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_wd_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_wd_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallets_adapter_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallets_adapter_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallets_adapter_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallets_adapter_settings' ) );

