<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ct_optimization_option_name');
delete_site_option('ct_optimization_option_name');
delete_option('ct-optimization');
delete_site_option('ct-optimization');

