<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('internet_connection_status');
delete_site_option('internet_connection_status');
delete_option('ics_review_notice_dismissed');
delete_site_option('ics_review_notice_dismissed');

