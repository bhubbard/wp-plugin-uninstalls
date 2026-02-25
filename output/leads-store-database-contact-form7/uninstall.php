<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mwscl_submissions_mwscl_keep_data_on_uninstall');
delete_site_option('mwscl_submissions_mwscl_keep_data_on_uninstall');
delete_option('mwscl_submissions_version');
delete_site_option('mwscl_submissions_version');
delete_option('mwscl_submissions_db_version');
delete_site_option('mwscl_submissions_db_version');

