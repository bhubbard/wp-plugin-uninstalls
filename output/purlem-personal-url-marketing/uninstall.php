<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('purlemURI');
delete_site_option('purlemURI');
delete_option('purlemID');
delete_site_option('purlemID');
delete_option('purlapi');
delete_site_option('purlapi');
delete_option('showPurlForm');
delete_site_option('showPurlForm');

