<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ttckvsbh_accounts');
delete_site_option('ttckvsbh_accounts');
delete_option('ttckvsbh_rd_order');
delete_site_option('ttckvsbh_rd_order');
delete_option('woocommerce_ttckvsbh_settings');
delete_site_option('woocommerce_ttckvsbh_settings');
delete_option('ttckvsbh_client_id');
delete_site_option('ttckvsbh_client_id');
delete_option('ttckvsbh_api_key');
delete_site_option('ttckvsbh_api_key');

