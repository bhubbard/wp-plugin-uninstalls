<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('cfc_civicrm_price_sets');
delete_site_transient('cfc_civicrm_price_sets');

