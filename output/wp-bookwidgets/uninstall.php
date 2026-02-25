<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bw_lti_enabled');
delete_site_option('bw_lti_enabled');
delete_option('bw_lti_consumer_key');
delete_site_option('bw_lti_consumer_key');
delete_option('bw_lti_consumer_secret');
delete_site_option('bw_lti_consumer_secret');

