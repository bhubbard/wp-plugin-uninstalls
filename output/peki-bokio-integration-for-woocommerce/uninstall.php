<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bokio_webhook_secret');
delete_site_option('bokio_webhook_secret');
delete_option('pekibokio_refresh_token');
delete_site_option('pekibokio_refresh_token');
delete_option('pekibokio_employee_token');
delete_site_option('pekibokio_employee_token');
delete_option('bokio_employee_token');
delete_site_option('bokio_employee_token');
delete_option('pekibokio_subscription_state');
delete_site_option('pekibokio_subscription_state');
delete_option('pekibokio_has_active_subscription');
delete_site_option('pekibokio_has_active_subscription');
delete_option('pekibokio_plan');
delete_site_option('pekibokio_plan');
delete_option('pekibokio_next_renewal');
delete_site_option('pekibokio_next_renewal');
delete_option('bokio_last_status');
delete_site_option('bokio_last_status');
delete_option('pekibokio_connection_id');
delete_site_option('pekibokio_connection_id');
delete_option('pekibokio_company_slug');
delete_site_option('pekibokio_company_slug');
delete_option('pekibokio_sync_last');
delete_site_option('pekibokio_sync_last');
delete_option('wfb_employee_token');
delete_site_option('wfb_employee_token');
delete_option('pekibokio_transfers_used');
delete_site_option('pekibokio_transfers_used');
delete_option('pekibokio_transfers_limit');
delete_site_option('pekibokio_transfers_limit');
delete_option('pekibokio_transfers_reset');
delete_site_option('pekibokio_transfers_reset');
delete_option('pekibokio_cancel_at_period_end');
delete_site_option('pekibokio_cancel_at_period_end');
delete_option('pekibokio_auto_upgrade_enabled');
delete_site_option('pekibokio_auto_upgrade_enabled');
delete_option('pekibokio_company_id');
delete_site_option('pekibokio_company_id');
delete_option('bokio_company_slug');
delete_site_option('bokio_company_slug');
delete_option('bokio_used_count');
delete_site_option('bokio_used_count');
delete_option('bokio_auto_save_invoice_pdf');
delete_site_option('bokio_auto_save_invoice_pdf');
delete_option('pekibokio_bank_slot_map');
delete_site_option('pekibokio_bank_slot_map');
delete_option('bokio_shipping_income_account');
delete_site_option('bokio_shipping_income_account');
delete_option('bokio_company_id');
delete_site_option('bokio_company_id');
delete_option('bokio_status');
delete_site_option('bokio_status');
delete_option('bokio_plan');
delete_site_option('bokio_plan');
delete_option('bokio_used_month');
delete_site_option('bokio_used_month');
delete_option('bokio_refresh_token');
delete_site_option('bokio_refresh_token');
delete_option('bokio_force_no_vat');
delete_site_option('bokio_force_no_vat');
delete_option('bokio_cash_behavior_enabled');
delete_site_option('bokio_cash_behavior_enabled');
delete_option('pekibokio_bank_account_map');
delete_site_option('pekibokio_bank_account_map');
delete_option('bokio_gateway_cash_map');
delete_site_option('bokio_gateway_cash_map');
delete_option('wfb_company_slug');
delete_site_option('wfb_company_slug');
delete_option('pekibokio_product_id');
delete_site_option('pekibokio_product_id');
delete_option('bokio_product_id');
delete_site_option('bokio_product_id');

// Delete Transients
delete_transient('bokio_status_cache');
delete_site_transient('bokio_status_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pekibokio_connect_state_%', '_site_transient_pekibokio_connect_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pekibokio_state_throttle');
delete_site_transient('pekibokio_state_throttle');
delete_transient('pekibokio_last_remote_error');
delete_site_transient('pekibokio_last_remote_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('pekibokio_cron_refresh_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bokio_invoice_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bokio_invoice_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bokio_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bokio_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bokio_invoice_pdf_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bokio_invoice_pdf_id' ) );

