<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page-scroll-progress-line-color');
delete_site_option('page-scroll-progress-line-color');
delete_option('page-scroll-progress-substrates-color');
delete_site_option('page-scroll-progress-substrates-color');
delete_option('page-scroll-progress-position');
delete_site_option('page-scroll-progress-position');

