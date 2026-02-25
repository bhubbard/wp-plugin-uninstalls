<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swpco_enable_sorting');
delete_site_option('swpco_enable_sorting');
delete_option('swpco_sort_by');
delete_site_option('swpco_sort_by');

