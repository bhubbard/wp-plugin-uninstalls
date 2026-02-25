<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SERP_GOOGLE_DOMAINS');
delete_site_option('SERP_GOOGLE_DOMAINS');
delete_option('SERP_GOOGLE_RESULTS');
delete_site_option('SERP_GOOGLE_RESULTS');
delete_option('SERP_GOOGLE_PH');
delete_site_option('SERP_GOOGLE_PH');

