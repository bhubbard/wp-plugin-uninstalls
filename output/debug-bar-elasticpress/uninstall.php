<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ep_enable_logging');
delete_site_option('ep_enable_logging');
delete_option('ep_query_log_by_status');
delete_site_option('ep_query_log_by_status');
delete_option('ep_query_log_by_context');
delete_site_option('ep_query_log_by_context');

