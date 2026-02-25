<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('extra_fee_option_enabled');
delete_site_option('extra_fee_option_enabled');
delete_option('extra_fee_option_label');
delete_site_option('extra_fee_option_label');
delete_option('extra_fee_option_cost');
delete_site_option('extra_fee_option_cost');
delete_option('extra_fee_option_type');
delete_site_option('extra_fee_option_type');
delete_option('extra_fee_option_taxable');
delete_site_option('extra_fee_option_taxable');
delete_option('extra_fee_option_minorder');
delete_site_option('extra_fee_option_minorder');

