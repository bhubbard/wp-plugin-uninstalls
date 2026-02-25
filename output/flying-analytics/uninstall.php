<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FLYING_ANALYTICS_VERSION');
delete_site_option('FLYING_ANALYTICS_VERSION');
delete_option('flying_analytics_method');
delete_site_option('flying_analytics_method');
delete_option('flying_analytics_disable_on_login');
delete_site_option('flying_analytics_disable_on_login');
delete_option('flying_analytics_id');
delete_site_option('flying_analytics_id');

