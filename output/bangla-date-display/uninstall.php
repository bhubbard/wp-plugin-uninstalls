<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bddp_options');
delete_site_option('bddp_options');
delete_option('bddp_wgt1');
delete_site_option('bddp_wgt1');
delete_option('bddp_wgt2');
delete_site_option('bddp_wgt2');
delete_option('bddp_wgt3');
delete_site_option('bddp_wgt3');

