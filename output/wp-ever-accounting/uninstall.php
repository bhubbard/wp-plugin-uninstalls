<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eac_currencies');
delete_site_option('eac_currencies');
delete_option('eac_version_updated');
delete_site_option('eac_version_updated');
delete_option('eac_exchange_rates');
delete_site_option('eac_exchange_rates');
delete_option('eac_install_date');
delete_site_option('eac_install_date');
delete_option('eac_base_currency');
delete_site_option('eac_base_currency');
delete_option('eac_business_name');
delete_site_option('eac_business_name');
delete_option('eac_business_email');
delete_site_option('eac_business_email');
delete_option('eac_business_address');
delete_site_option('eac_business_address');
delete_option('eac_business_city');
delete_site_option('eac_business_city');
delete_option('eac_business_state');
delete_site_option('eac_business_state');
delete_option('eac_business_zip');
delete_site_option('eac_business_zip');
delete_option('eac_business_country');
delete_site_option('eac_business_country');
delete_option('eac_setup_wizard_completed');
delete_site_option('eac_setup_wizard_completed');
delete_option('eac_bill_note');
delete_site_option('eac_bill_note');
delete_option('eac_bill_terms');
delete_site_option('eac_bill_terms');
delete_option('eac_tax_total_display');
delete_site_option('eac_tax_total_display');
delete_option('eac_decimal_separator');
delete_site_option('eac_decimal_separator');
delete_option('eac_invoice_note');
delete_site_option('eac_invoice_note');
delete_option('eac_invoice_terms');
delete_site_option('eac_invoice_terms');
delete_option('eac_bill_col_item_label');
delete_site_option('eac_bill_col_item_label');
delete_option('eac_bill_col_quantity_label');
delete_site_option('eac_bill_col_quantity_label');
delete_option('eac_bill_col_price_label');
delete_site_option('eac_bill_col_price_label');
delete_option('eac_bill_col_tax_label');
delete_site_option('eac_bill_col_tax_label');
delete_option('eac_bill_col_subtotal_label');
delete_site_option('eac_bill_col_subtotal_label');
delete_option('eac_company_name');
delete_site_option('eac_company_name');
delete_option('eac_company_email');
delete_site_option('eac_company_email');
delete_option('eac_company_phone');
delete_site_option('eac_company_phone');
delete_option('eac_company_address');
delete_site_option('eac_company_address');
delete_option('eac_company_city');
delete_site_option('eac_company_city');
delete_option('eac_business_postcode');
delete_site_option('eac_business_postcode');
delete_option('eac_business_logo');
delete_site_option('eac_business_logo');
delete_option('eac_business_tax_number');
delete_site_option('eac_business_tax_number');
delete_option('eac_year_start_date');
delete_site_option('eac_year_start_date');
delete_option('eac_invoice_col_item_label');
delete_site_option('eac_invoice_col_item_label');
delete_option('eac_invoice_col_quantity_label');
delete_site_option('eac_invoice_col_quantity_label');
delete_option('eac_invoice_col_price_label');
delete_site_option('eac_invoice_col_price_label');
delete_option('eac_invoice_col_tax_label');
delete_site_option('eac_invoice_col_tax_label');
delete_option('eac_invoice_col_subtotal_label');
delete_site_option('eac_invoice_col_subtotal_label');
delete_option('eaccounting_settings');
delete_site_option('eaccounting_settings');
delete_option('eaccounting_currencies');
delete_site_option('eaccounting_currencies');
delete_option('eac_bill_due_date');
delete_site_option('eac_bill_due_date');
delete_option('eac_bill_prefix');
delete_site_option('eac_bill_prefix');
delete_option('eac_bill_digits');
delete_site_option('eac_bill_digits');
delete_option('eac_tax_enabled');
delete_site_option('eac_tax_enabled');
delete_option('eac_expense_prefix');
delete_site_option('eac_expense_prefix');
delete_option('eac_expense_digits');
delete_site_option('eac_expense_digits');
delete_option('eac_invoice_due_date');
delete_site_option('eac_invoice_due_date');
delete_option('eac_invoice_prefix');
delete_site_option('eac_invoice_prefix');
delete_option('eac_invoice_digits');
delete_site_option('eac_invoice_digits');
delete_option('eac_payment_prefix');
delete_site_option('eac_payment_prefix');
delete_option('eac_payment_digits');
delete_site_option('eac_payment_digits');
delete_option('eac_currency_position');
delete_site_option('eac_currency_position');
delete_option('eac_thousand_separator');
delete_site_option('eac_thousand_separator');
delete_option('eac_currency_precision');
delete_site_option('eac_currency_precision');
delete_option('eac_business_phone');
delete_site_option('eac_business_phone');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_flash_messages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eaccounting_version');
delete_site_option('eaccounting_version');
delete_option('eac_version');
delete_site_option('eac_version');
delete_option('eaccounting_install_date');
delete_site_option('eaccounting_install_date');

// Delete Transients
delete_transient('eac_payments_report');
delete_site_transient('eac_payments_report');
delete_transient('eac_profits_report');
delete_site_transient('eac_profits_report');
delete_transient('eac_expenses_report');
delete_site_transient('eac_expenses_report');
delete_transient('eac_installed');
delete_site_transient('eac_installed');
delete_transient('eac_payments_reports');
delete_site_transient('eac_payments_reports');
delete_transient('eac_expenses_reports');
delete_site_transient('eac_expenses_reports');
delete_transient('eac_profit_reports');
delete_site_transient('eac_profit_reports');
delete_transient('get_expenses_report');
delete_site_transient('get_expenses_report');
delete_transient('get_profits_report');
delete_site_transient('get_profits_report');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('eac_hourly_event');
wp_clear_scheduled_hook('eac_daily_event');
wp_clear_scheduled_hook('eac_weekly_event');

