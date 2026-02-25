<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mt_order_options');
delete_site_option('mt_order_options');
delete_option('ctct_settings');
delete_site_option('ctct_settings');

