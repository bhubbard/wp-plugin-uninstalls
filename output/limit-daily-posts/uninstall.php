<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lp_num_limit');
delete_site_option('lp_num_limit');
delete_option('lp_per_author');
delete_site_option('lp_per_author');
delete_option('lp_force_delete');
delete_site_option('lp_force_delete');

