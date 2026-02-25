<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accodps_wc_advance_payment_percentage');
delete_site_option('accodps_wc_advance_payment_percentage');
delete_option('accodps_wc_advance_payment_min_order_total');
delete_site_option('accodps_wc_advance_payment_min_order_total');
delete_option('accodps_advance_payment_title');
delete_site_option('accodps_advance_payment_title');
delete_option('accodps_advance_payment_description');
delete_site_option('accodps_advance_payment_description');
delete_option('accodps_advance_payment_checkbox_text');
delete_site_option('accodps_advance_payment_checkbox_text');

