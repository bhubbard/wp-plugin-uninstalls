<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcc_target_class');
delete_site_option('jcc_target_class');
delete_option('jcc_exchange_rates_api');
delete_site_option('jcc_exchange_rates_api');
delete_option('jcc_currency');
delete_site_option('jcc_currency');
delete_option('jcc_exchange_rates');
delete_site_option('jcc_exchange_rates');
delete_option('jcc_exchange_rates_from');
delete_site_option('jcc_exchange_rates_from');

