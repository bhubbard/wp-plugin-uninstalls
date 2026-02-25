<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopmetrics_for_wp');
delete_site_option('shopmetrics_for_wp');
delete_option('smr_for_wp');
delete_site_option('smr_for_wp');
delete_option('shopmetrics_for_woocommerce');
delete_site_option('shopmetrics_for_woocommerce');

