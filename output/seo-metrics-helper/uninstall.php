<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_metrics_first_time_connecting');
delete_site_option('seo_metrics_first_time_connecting');

