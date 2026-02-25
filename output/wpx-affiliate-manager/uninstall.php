<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WidgTit');
delete_site_option('WidgTit');
delete_option('Ad1Destination');
delete_site_option('Ad1Destination');
delete_option('Ad1Img');
delete_site_option('Ad1Img');
delete_option('Ad2Destination');
delete_site_option('Ad2Destination');
delete_option('Ad2Img');
delete_site_option('Ad2Img');
delete_option('Ad3Destination');
delete_site_option('Ad3Destination');
delete_option('Ad3Img');
delete_site_option('Ad3Img');
delete_option('Ad4Destination');
delete_site_option('Ad4Destination');
delete_option('Ad4Img');
delete_site_option('Ad4Img');
delete_option('Ad5Destination');
delete_site_option('Ad5Destination');
delete_option('Ad5Img');
delete_site_option('Ad5Img');
delete_option('Ad6Destination');
delete_site_option('Ad6Destination');
delete_option('Ad6Img');
delete_site_option('Ad6Img');

