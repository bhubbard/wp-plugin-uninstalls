<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccf_cod_fee_enabled');
delete_site_option('wccf_cod_fee_enabled');
delete_option('wccf_cod_fee_label');
delete_site_option('wccf_cod_fee_label');
delete_option('wccf_cod_fee_type');
delete_site_option('wccf_cod_fee_type');
delete_option('wccf_cod_fee_amount');
delete_site_option('wccf_cod_fee_amount');
delete_option('wccf_cod_fee_min_total');
delete_site_option('wccf_cod_fee_min_total');

