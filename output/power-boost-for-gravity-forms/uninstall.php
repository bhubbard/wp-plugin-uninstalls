<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_transient_timeout_gf_dashboard_unread_results');
delete_site_option('_transient_timeout_gf_dashboard_unread_results');

