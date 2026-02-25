<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_optimize-js');
delete_site_option('page_optimize-js');
delete_option('page_optimize-load-mode');
delete_site_option('page_optimize-load-mode');
delete_option('page_optimize-js-exclude');
delete_site_option('page_optimize-js-exclude');
delete_option('page_optimize-css');
delete_site_option('page_optimize-css');
delete_option('page_optimize-css-exclude');
delete_site_option('page_optimize-css-exclude');

