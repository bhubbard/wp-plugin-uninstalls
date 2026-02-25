<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wilcoskywb_wiki_blocks_merge_permissions');
delete_site_option('wilcoskywb_wiki_blocks_merge_permissions');
delete_option('wilcoskywb_wiki_blocks_browse_permissions');
delete_site_option('wilcoskywb_wiki_blocks_browse_permissions');
delete_option('wilcoskywb_wiki_blocks_suggest_permissions');
delete_site_option('wilcoskywb_wiki_blocks_suggest_permissions');
delete_option('wilcoskywb_wiki_blocks_require_login_browse');
delete_site_option('wilcoskywb_wiki_blocks_require_login_browse');
delete_option('wilcoskywb_wiki_blocks_cleanup_on_uninstall');
delete_site_option('wilcoskywb_wiki_blocks_cleanup_on_uninstall');
delete_option('wilcoskywb_wiki_blocks_activity_retention_days');
delete_site_option('wilcoskywb_wiki_blocks_activity_retention_days');
delete_option('wilcoskywb_wiki_blocks_max_versions_per_block');
delete_site_option('wilcoskywb_wiki_blocks_max_versions_per_block');
delete_option('wilcoskywb_wiki_blocks_cleanup_on_delete');
delete_site_option('wilcoskywb_wiki_blocks_cleanup_on_delete');
delete_option('wilcoskywb_wiki_blocks_db_version');
delete_site_option('wilcoskywb_wiki_blocks_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wilcoskywb_backend_edit_%', '_site_transient_wilcoskywb_backend_edit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

