<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('_mp_store_identificator');
delete_site_option('_mp_store_identificator');

// Delete Transients
delete_transient('mp_credentials_expired_result');
delete_site_transient('mp_credentials_expired_result');

