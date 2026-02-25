<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w2pe_measure_category');
delete_site_option('w2pe_measure_category');
delete_option(' w2pe_measure_category');
delete_site_option(' w2pe_measure_category');

