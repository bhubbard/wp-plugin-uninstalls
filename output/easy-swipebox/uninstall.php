<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easySwipeBox_autodetect');
delete_site_option('easySwipeBox_autodetect');
delete_option('easySwipeBox_lightbox');
delete_site_option('easySwipeBox_lightbox');
delete_option('easySwipeBox_advanced');
delete_site_option('easySwipeBox_advanced');
delete_option('easySwipeBox_overview');
delete_site_option('easySwipeBox_overview');

