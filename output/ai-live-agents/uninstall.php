<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ailiveagents_bot_id');
delete_site_option('ailiveagents_bot_id');
delete_option('ailiveagents_exclude_pages');
delete_site_option('ailiveagents_exclude_pages');

