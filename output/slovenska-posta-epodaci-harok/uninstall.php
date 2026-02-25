<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsseph_options');
delete_site_option('tsseph_options');
delete_option('tsseph_bonus_options');
delete_site_option('tsseph_bonus_options');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

