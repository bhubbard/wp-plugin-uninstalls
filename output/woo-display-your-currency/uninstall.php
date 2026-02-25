<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brijesh_currency_symbol');
delete_site_option('brijesh_currency_symbol');
delete_option('brijesh_exchange_rate');
delete_site_option('brijesh_exchange_rate');

