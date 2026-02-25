<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('referrer_analytics_options');
delete_site_option('referrer_analytics_options');
delete_option('referrer_analytics_db_version');
delete_site_option('referrer_analytics_db_version');

