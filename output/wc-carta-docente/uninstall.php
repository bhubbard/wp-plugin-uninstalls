<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccd-sandbox');
delete_site_option('wccd-sandbox');
delete_option('wccd-cert-activation');
delete_site_option('wccd-cert-activation');
delete_option('wccd-password');
delete_site_option('wccd-password');
delete_option('wccd-categories');
delete_site_option('wccd-categories');
delete_option('wccd-image');
delete_site_option('wccd-image');
delete_option('wccd-coupon');
delete_site_option('wccd-coupon');
delete_option('wccd-orders-on-hold');
delete_site_option('wccd-orders-on-hold');
delete_option('wccd-exclude-shipping');
delete_site_option('wccd-exclude-shipping');
delete_option('wccd-items-check');
delete_site_option('wccd-items-check');
delete_option('wccd-email-order-received');
delete_site_option('wccd-email-order-received');
delete_option('wccd-email-order-failed');
delete_site_option('wccd-email-order-failed');

