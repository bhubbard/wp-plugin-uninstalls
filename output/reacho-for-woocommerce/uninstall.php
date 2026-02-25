<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reachowc_consumer_key');
delete_site_option('reachowc_consumer_key');
delete_option('reachowc_consumer_secret');
delete_site_option('reachowc_consumer_secret');
delete_option('reachowc_settings');
delete_site_option('reachowc_settings');

