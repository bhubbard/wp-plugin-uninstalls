<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chartbeat_userid');
delete_site_option('chartbeat_userid');
delete_option('chartbeat_enable_newsbeat');
delete_site_option('chartbeat_enable_newsbeat');
delete_option('chartbeat_apikey');
delete_site_option('chartbeat_apikey');
delete_option('chartbeat_trackadmins');
delete_site_option('chartbeat_trackadmins');
delete_option('chartbeat_enable_headline_testing');
delete_site_option('chartbeat_enable_headline_testing');
delete_option('chartbeat_widgetconfig');
delete_site_option('chartbeat_widgetconfig');

