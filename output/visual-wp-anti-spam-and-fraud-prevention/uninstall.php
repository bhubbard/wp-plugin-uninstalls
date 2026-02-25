<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vwpfp_fraud_prevention_threshold');
delete_site_option('vwpfp_fraud_prevention_threshold');
delete_option('vwpfp_max_transactions');
delete_site_option('vwpfp_max_transactions');

