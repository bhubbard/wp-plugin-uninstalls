<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uwplt_ga');
delete_site_option('uwplt_ga');
delete_option('uwplt_gtag');
delete_site_option('uwplt_gtag');
delete_option('uwplt_custom_event_name');
delete_site_option('uwplt_custom_event_name');

