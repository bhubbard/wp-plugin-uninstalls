<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aff_woo_coupon_association_data');
delete_site_option('aff_woo_coupon_association_data');

