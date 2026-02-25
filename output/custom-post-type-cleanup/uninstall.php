<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('custom_post_type_cleanup_unused_post_types');
delete_site_transient('custom_post_type_cleanup_unused_post_types');

