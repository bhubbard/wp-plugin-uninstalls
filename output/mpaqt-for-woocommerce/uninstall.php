<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mpaqt_eauth_value');
delete_site_option('woocommerce_mpaqt_eauth_value');
delete_option('woocommerce_mpaqt_remote_url');
delete_site_option('woocommerce_mpaqt_remote_url');
delete_option('mpaqt_consumer_key');
delete_site_option('mpaqt_consumer_key');
delete_option('mpaqt_consumer_secret');
delete_site_option('mpaqt_consumer_secret');

// Delete Transients
delete_transient('mpaqt_api_key_generated');
delete_site_transient('mpaqt_api_key_generated');
delete_transient('mpaqt_api_key_error');
delete_site_transient('mpaqt_api_key_error');

