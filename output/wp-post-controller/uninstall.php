<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppc_reset_notice_box');
delete_site_option('wppc_reset_notice_box');
delete_option('wppc_database_setup_done');
delete_site_option('wppc_database_setup_done');
delete_option('wppc_setting');
delete_site_option('wppc_setting');

