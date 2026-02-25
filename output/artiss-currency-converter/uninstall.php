<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('artiss_currency_converter');
delete_site_option('artiss_currency_converter');
delete_option('open_currency_converter');
delete_site_option('open_currency_converter');

