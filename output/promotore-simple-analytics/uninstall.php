<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptr_analytics_code');
delete_site_option('ptr_analytics_code');
delete_option('ptr_tagmanager_code');
delete_site_option('ptr_tagmanager_code');
delete_option('ptr_noscript_code');
delete_site_option('ptr_noscript_code');

