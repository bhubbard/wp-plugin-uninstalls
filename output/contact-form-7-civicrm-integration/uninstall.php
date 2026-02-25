<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_civi_host');
delete_site_option('cf7_civi_host');
delete_option('cf7_civi_path');
delete_site_option('cf7_civi_path');
delete_option('cf7_civi_site_key');
delete_site_option('cf7_civi_site_key');
delete_option('cf7_civi_api_key');
delete_site_option('cf7_civi_api_key');

