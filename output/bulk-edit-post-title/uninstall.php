<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bept_allow_tracking');
delete_site_option('bept_allow_tracking');

// Delete Transients
delete_transient('bulk_edit_post_title_action');
delete_site_transient('bulk_edit_post_title_action');
delete_transient('bulk_edit_post_title_ids');
delete_site_transient('bulk_edit_post_title_ids');
delete_transient('bept_tracking_dismissed');
delete_site_transient('bept_tracking_dismissed');

