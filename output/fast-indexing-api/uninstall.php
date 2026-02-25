<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giapi_auto_submissions');
delete_site_option('giapi_auto_submissions');
delete_option('giapi_requests');
delete_site_option('giapi_requests');
delete_option('rank-math-options-instant-indexing');
delete_site_option('rank-math-options-instant-indexing');
delete_option('giapi_settings');
delete_site_option('giapi_settings');
delete_option('giapi_notices');
delete_site_option('giapi_notices');
delete_option('rank_math_indexnow_log');
delete_site_option('rank_math_indexnow_log');

