<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnewsdesk_dashboard_custom_feed');
delete_site_option('wpnewsdesk_dashboard_custom_feed');

