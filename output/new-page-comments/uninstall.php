<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('npc_load_comment');
delete_site_option('npc_load_comment');
delete_option('new-page-comment-opt');
delete_site_option('new-page-comment-opt');

