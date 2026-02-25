<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swm');
delete_site_option('swm');
delete_option('swm_end');
delete_site_option('swm_end');
delete_option('swm_max');
delete_site_option('swm_max');
delete_option('swm_z_index');
delete_site_option('swm_z_index');

