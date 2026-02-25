<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccdc-sandbox');
delete_site_option('wccdc-sandbox');
delete_option('wccdc-cert-activation');
delete_site_option('wccdc-cert-activation');
delete_option('wccdc-password');
delete_site_option('wccdc-password');
delete_option('wccdc-categories');
delete_site_option('wccdc-categories');
delete_option('wccdc-image');
delete_site_option('wccdc-image');
delete_option('wccdc-premium-key');
delete_site_option('wccdc-premium-key');
delete_option('wccdc-coupon');
delete_site_option('wccdc-coupon');
delete_option('wccdc-items-check');
delete_site_option('wccdc-items-check');
delete_option('wccdc-orders-on-hold');
delete_site_option('wccdc-orders-on-hold');
delete_option('wccdc-exclude-shipping');
delete_site_option('wccdc-exclude-shipping');
delete_option('wccdc-email-order-received');
delete_site_option('wccdc-email-order-received');
delete_option('wccdc-email-subject');
delete_site_option('wccdc-email-subject');
delete_option('wccdc-email-heading');
delete_site_option('wccdc-email-heading');
delete_option('wccdc-email-order-failed');
delete_site_option('wccdc-email-order-failed');

