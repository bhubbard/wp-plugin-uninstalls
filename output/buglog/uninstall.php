<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buglog_id');
delete_site_option('buglog_id');
delete_option('buglog_visibility');
delete_site_option('buglog_visibility');

