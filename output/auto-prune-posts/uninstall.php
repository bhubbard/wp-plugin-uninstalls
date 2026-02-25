<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_autopruneposts_conf');
delete_site_option('plugin_autopruneposts_conf');

// Delete Transients
delete_transient('auto-prune-posts-lastrun');
delete_site_transient('auto-prune-posts-lastrun');

