<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('baseerp_api_environment_endpoint');
delete_site_option('baseerp_api_environment_endpoint');
delete_option('baseerp_debug');
delete_site_option('baseerp_debug');
delete_option('baseerp_shipping_company_id');
delete_site_option('baseerp_shipping_company_id');
delete_option('baseerp_bank_id');
delete_site_option('baseerp_bank_id');
delete_option('baseerp_api_key');
delete_site_option('baseerp_api_key');
delete_option('baseerp_webhook_auth_token');
delete_site_option('baseerp_webhook_auth_token');

// Delete Transients
delete_transient('baseerp_bulk_nf_messages');
delete_site_transient('baseerp_bulk_nf_messages');
delete_transient('baseerp_notice_transient');
delete_site_transient('baseerp_notice_transient');

