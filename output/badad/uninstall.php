<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('badad_testlive');
delete_site_option('badad_testlive');
delete_option('badad_live_pub');
delete_site_option('badad_live_pub');
delete_option('badad_live_sec');
delete_site_option('badad_live_sec');
delete_option('badad_test_pub');
delete_site_option('badad_test_pub');
delete_option('badad_test_sec');
delete_site_option('badad_test_sec');
delete_option('badad_call_key');
delete_site_option('badad_call_key');
delete_option('badad_siteslug');
delete_site_option('badad_siteslug');
delete_option('badad_access');
delete_site_option('badad_access');

