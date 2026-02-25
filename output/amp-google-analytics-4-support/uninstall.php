<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ampanalyticssupport');
delete_site_option('ampanalyticssupport');
delete_option('ampanalyticssupport_pageview');
delete_site_option('ampanalyticssupport_pageview');
delete_option('ampanalyticssupport_consent');
delete_site_option('ampanalyticssupport_consent');
delete_option('ampanalyticssupport_webvitals');
delete_site_option('ampanalyticssupport_webvitals');
delete_option('ampanalyticssupport_performance');
delete_site_option('ampanalyticssupport_performance');

