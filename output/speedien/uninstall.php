<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedien_options');
delete_site_option('speedien_options');
delete_option('speedien_cdnurl');
delete_site_option('speedien_cdnurl');
delete_option('speedien_preload_status');
delete_site_option('speedien_preload_status');

