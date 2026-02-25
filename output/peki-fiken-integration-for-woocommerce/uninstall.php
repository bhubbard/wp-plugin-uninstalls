<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fiken_webhook_secret');
delete_site_option('fiken_webhook_secret');
delete_option('pekifiken_subscription_state');
delete_site_option('pekifiken_subscription_state');
delete_option('pekifiken_employee_token');
delete_site_option('pekifiken_employee_token');
delete_option('pekifiken_refresh_token');
delete_site_option('pekifiken_refresh_token');
delete_option('pekifiken_connection_id');
delete_site_option('pekifiken_connection_id');
delete_option('pekifiken_company_slug');
delete_site_option('pekifiken_company_slug');
delete_option('pekifiken_has_active_subscription');
delete_site_option('pekifiken_has_active_subscription');
delete_option('pekifiken_sync_last');
delete_site_option('pekifiken_sync_last');
delete_option('pekifiken_quota_remaining');
delete_site_option('pekifiken_quota_remaining');
delete_option('pekifiken_quota_limit');
delete_site_option('pekifiken_quota_limit');
delete_option('pekifiken_quota_used');
delete_site_option('pekifiken_quota_used');
delete_option('fiken_employee_token');
delete_site_option('fiken_employee_token');
delete_option('wfb_employee_token');
delete_site_option('wfb_employee_token');
delete_option('pekifiken_transfers_used');
delete_site_option('pekifiken_transfers_used');
delete_option('pekifiken_transfers_limit');
delete_site_option('pekifiken_transfers_limit');
delete_option('pekifiken_auto_upgrade_enabled');
delete_site_option('pekifiken_auto_upgrade_enabled');
delete_option('pekifiken_transfers_reset');
delete_site_option('pekifiken_transfers_reset');
delete_option('pekifiken_plan');
delete_site_option('pekifiken_plan');
delete_option('pekifiken_cancel_at_period_end');
delete_site_option('pekifiken_cancel_at_period_end');
delete_option('pekifiken_next_renewal');
delete_site_option('pekifiken_next_renewal');
delete_option('fiken_company_slug');
delete_site_option('fiken_company_slug');
delete_option('wfb_company_slug');
delete_site_option('wfb_company_slug');
delete_option('pekifiken_bank_account_map');
delete_site_option('pekifiken_bank_account_map');
delete_option('fiken_gateway_cash_map');
delete_site_option('fiken_gateway_cash_map');
delete_option('fiken_used_count');
delete_site_option('fiken_used_count');
delete_option('fiken_auto_save_invoice_pdf');
delete_site_option('fiken_auto_save_invoice_pdf');
delete_option('pekifiken_bank_slot_map');
delete_site_option('pekifiken_bank_slot_map');
delete_option('fiken_shipping_income_account');
delete_site_option('fiken_shipping_income_account');
delete_option('fiken_blocked_non_vat_company');
delete_site_option('fiken_blocked_non_vat_company');
delete_option('fiken_last_status');
delete_site_option('fiken_last_status');
delete_option('fiken_force_no_vat');
delete_site_option('fiken_force_no_vat');
delete_option('fiken_cash_behavior_enabled');
delete_site_option('fiken_cash_behavior_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pekifiken_connect_state_%', '_site_transient_pekifiken_connect_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pekifiken_notice_check');
delete_site_transient('pekifiken_notice_check');
delete_transient('pekifiken_state_throttle');
delete_site_transient('pekifiken_state_throttle');
delete_transient('pekifiken_last_remote_error');
delete_site_transient('pekifiken_last_remote_error');
delete_transient('fiken_status_cache');
delete_site_transient('fiken_status_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('pekifiken_cron_refresh_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pekifiken_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pekifiken_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pekifiken_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pekifiken_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fiken_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fiken_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fiken_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fiken_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fiken_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fiken_invoice_pdf_id' ) );

