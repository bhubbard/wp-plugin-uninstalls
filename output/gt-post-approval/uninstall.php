<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gt_opt');
delete_site_option('gt_opt');
delete_option('gt_opt_callback');
delete_site_option('gt_opt_callback');

