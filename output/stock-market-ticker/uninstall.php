<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stockdio_ticker_options');
delete_site_option('stockdio_ticker_options');
delete_option('stockdio_ticker_my_plugin_do_activation_redirect');
delete_site_option('stockdio_ticker_my_plugin_do_activation_redirect');

