<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_analytics_token');
delete_site_option('post_analytics_token');
delete_option('pa_google_token');
delete_site_option('pa_google_token');
delete_option('analytify_widget_date_differ');
delete_site_option('analytify_widget_date_differ');

