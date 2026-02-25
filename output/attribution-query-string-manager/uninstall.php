<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aqsm-cookie-life');
delete_site_option('aqsm-cookie-life');
delete_option('aqsm-allowableFields');
delete_site_option('aqsm-allowableFields');
delete_option('aqsm-targetURLs');
delete_site_option('aqsm-targetURLs');

