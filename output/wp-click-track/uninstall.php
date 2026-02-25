<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('click_tracker');
delete_site_option('click_tracker');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('GoogleAnalyticsPP');
delete_site_option('GoogleAnalyticsPP');

