<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blocktree_sources');
delete_site_option('blocktree_sources');
delete_option('blocktree_handler_key');
delete_site_option('blocktree_handler_key');

