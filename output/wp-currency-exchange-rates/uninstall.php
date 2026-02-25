<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_cer_rates');
delete_site_option('alg_cer_rates');
delete_option('alg_cer_server');
delete_site_option('alg_cer_server');
delete_option('alg_cer_server_api_key_fixer');
delete_site_option('alg_cer_server_api_key_fixer');
delete_option('alg_cer_cron_data');
delete_site_option('alg_cer_cron_data');
delete_option('alg_cer_update_period');
delete_site_option('alg_cer_update_period');
delete_option('alg_currency_exchange_rates_version');
delete_site_option('alg_currency_exchange_rates_version');

