<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp_settings');
delete_site_option('mp_settings');
delete_option('woocommerce_check_page_id');
delete_site_option('woocommerce_check_page_id');
delete_option('paymill_webhook_id');
delete_site_option('paymill_webhook_id');
delete_option('paymill_db_version');
delete_site_option('paymill_db_version');

