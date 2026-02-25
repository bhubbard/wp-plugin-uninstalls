<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xiaodu_jsdelivr_data');
delete_site_option('xiaodu_jsdelivr_data');

// Delete Transients
delete_transient('xiaodu_jsdelivr_lock');
delete_site_transient('xiaodu_jsdelivr_lock');
delete_transient('xiaodu_jsdelivr_api_result');
delete_site_transient('xiaodu_jsdelivr_api_result');
delete_transient('xiaodu_jsdelivr_api_resp');
delete_site_transient('xiaodu_jsdelivr_api_resp');

