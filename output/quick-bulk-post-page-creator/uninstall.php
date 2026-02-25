<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qbppc_entries');
delete_site_option('qbppc_entries');
delete_option('qbppc_hierarchy_indent_character');
delete_site_option('qbppc_hierarchy_indent_character');
delete_option('qbppc_post_type');
delete_site_option('qbppc_post_type');
delete_option('qbppc_post_status');
delete_site_option('qbppc_post_status');

