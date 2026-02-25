<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ijab_custom_currency_symbol');
delete_site_option('ijab_custom_currency_symbol');

