<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newpost_catch');
delete_site_option('newpost_catch');
delete_option('widget_newpostcatch');
delete_site_option('widget_newpostcatch');
delete_option('npc_search_posts');
delete_site_option('npc_search_posts');

