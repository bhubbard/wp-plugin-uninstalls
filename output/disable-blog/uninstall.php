<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwpb_version');
delete_site_option('dwpb_version');
delete_option('dwpb_previous_version');
delete_site_option('dwpb_previous_version');

// Delete Transients
delete_transient('wc_count_comments');
delete_site_transient('wc_count_comments');

