<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zenpress_admin_bar_enabled');
delete_site_option('zenpress_admin_bar_enabled');
delete_option('zenpress_active_snippets');
delete_site_option('zenpress_active_snippets');

