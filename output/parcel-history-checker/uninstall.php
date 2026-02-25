<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('phcwp_fraud_checker_data');
delete_site_transient('phcwp_fraud_checker_data');

