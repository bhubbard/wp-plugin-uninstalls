<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsq_api_key_test');
delete_site_option('lsq_api_key_test');
delete_option('lsq_api_key');
delete_site_option('lsq_api_key');
delete_option('lsq_api_key_expires');
delete_site_option('lsq_api_key_expires');

