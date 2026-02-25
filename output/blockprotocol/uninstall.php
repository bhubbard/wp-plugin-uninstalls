<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_protocol_options');
delete_site_option('block_protocol_options');
delete_option('block_protocol_view_count');
delete_site_option('block_protocol_view_count');
delete_option('block_protocol_db_migration_version');
delete_site_option('block_protocol_db_migration_version');

