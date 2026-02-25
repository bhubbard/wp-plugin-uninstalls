<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mortgage_calculator_anc_options');
delete_site_option('mortgage_calculator_anc_options');

