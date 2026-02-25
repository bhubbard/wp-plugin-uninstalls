<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatmetrics_url');
delete_site_option('chatmetrics_url');
delete_option('chatmetrics_enabled');
delete_site_option('chatmetrics_enabled');
delete_option('chatmetrics_user');
delete_site_option('chatmetrics_user');
delete_option('chatmetrics_code');
delete_site_option('chatmetrics_code');

