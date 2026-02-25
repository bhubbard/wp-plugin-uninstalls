<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tahc_workspace_id');
delete_site_option('tahc_workspace_id');
delete_option('tahc_chat_enabled');
delete_site_option('tahc_chat_enabled');

