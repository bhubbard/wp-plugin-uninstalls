<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Delete Transients
delete_transient('darujme_donors');
delete_site_transient('darujme_donors');
delete_transient('darujme_pledges');
delete_site_transient('darujme_pledges');

