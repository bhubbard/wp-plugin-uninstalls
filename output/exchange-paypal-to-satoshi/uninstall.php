<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppse_owner_email');
delete_site_option('ppse_owner_email');
delete_option('ppse_exchange_processor_url');
delete_site_option('ppse_exchange_processor_url');
delete_option('ppse_transaction_satoshi_min');
delete_site_option('ppse_transaction_satoshi_min');
delete_option('ppse_transaction_satoshi_max');
delete_site_option('ppse_transaction_satoshi_max');
delete_option('ppse_profit_percent');
delete_site_option('ppse_profit_percent');
delete_option('ppse_profit_fiat');
delete_site_option('ppse_profit_fiat');
delete_option('ppse_official_rate');
delete_site_option('ppse_official_rate');
delete_option('ppse_paypal_email');
delete_site_option('ppse_paypal_email');
delete_option('ppse_satoshi_api_key');
delete_site_option('ppse_satoshi_api_key');
delete_option('ppse_satoshi_balance');
delete_site_option('ppse_satoshi_balance');
delete_option('ppse_offline_message');
delete_site_option('ppse_offline_message');
delete_option('ppse_system_ready');
delete_site_option('ppse_system_ready');
delete_option('ppse_force_offline');
delete_site_option('ppse_force_offline');
delete_option('ppse_official_rate_checked');
delete_site_option('ppse_official_rate_checked');
delete_option('ppse_official_rate_check_errors');
delete_site_option('ppse_official_rate_check_errors');
delete_option('ppse_notify_error');
delete_site_option('ppse_notify_error');
delete_option('ppse_notify_warning');
delete_site_option('ppse_notify_warning');
delete_option('ppse_notify_transaction');
delete_site_option('ppse_notify_transaction');

