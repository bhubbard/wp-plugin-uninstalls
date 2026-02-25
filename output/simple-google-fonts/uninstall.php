<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('sgf_global_for_single_id');
delete_site_transient('sgf_global_for_single_id');
delete_transient('sgf_global_posts_ids');
delete_site_transient('sgf_global_posts_ids');

