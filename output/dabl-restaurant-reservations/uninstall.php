<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dabl_rr_dbv');
delete_site_option('dabl_rr_dbv');

// Delete Transients
delete_transient('dabl_rr_show_setup_notice');
delete_site_transient('dabl_rr_show_setup_notice');

