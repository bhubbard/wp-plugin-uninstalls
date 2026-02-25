<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udwd-extra_fee');
delete_site_option('udwd-extra_fee');
delete_option('udwd-api-customer-id');
delete_site_option('udwd-api-customer-id');
delete_option('udwd-api-client-id');
delete_site_option('udwd-api-client-id');
delete_option('udwd-api-client-secret');
delete_site_option('udwd-api-client-secret');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('udwd-phone_number');
delete_site_option('udwd-phone_number');
delete_option('udwd-pickup_time-start');
delete_site_option('udwd-pickup_time-start');
delete_option('udwd-pickup_time-end');
delete_site_option('udwd-pickup_time-end');
delete_option('udwd-pickup_time-weekend');
delete_site_option('udwd-pickup_time-weekend');
delete_option('udwd-pickup_time-processing');
delete_site_option('udwd-pickup_time-processing');

// Delete Transients
delete_transient('udwd-api-access-token');
delete_site_transient('udwd-api-access-token');

