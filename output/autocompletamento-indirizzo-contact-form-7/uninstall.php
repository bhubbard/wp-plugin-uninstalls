<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orem_cf7_geo_gpa_page');
delete_site_option('orem_cf7_geo_gpa_page');
delete_option('orem_cf7_geo_api_key');
delete_site_option('orem_cf7_geo_api_key');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

