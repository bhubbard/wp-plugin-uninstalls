<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smwpp_align');
delete_site_option('smwpp_align');
delete_option('smwpp_isize');
delete_site_option('smwpp_isize');
delete_option('smwpp_fbpage');
delete_site_option('smwpp_fbpage');
delete_option('smwpp_tweetpage');
delete_site_option('smwpp_tweetpage');
delete_option('smwpp_linkedinpage');
delete_site_option('smwpp_linkedinpage');
delete_option('smwpp_fburl');
delete_site_option('smwpp_fburl');
delete_option('smwpp_tweeturl');
delete_site_option('smwpp_tweeturl');
delete_option('smwpp_linkedinurl');
delete_site_option('smwpp_linkedinurl');
delete_option('smwpp_location');
delete_site_option('smwpp_location');

