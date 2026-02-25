<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multilipi_api_key');
delete_site_option('multilipi_api_key');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('multilipi_destination_languages');
delete_site_option('multilipi_destination_languages');
delete_option('multilipi_languages');
delete_site_option('multilipi_languages');
delete_option('multilipi_selected_langs');
delete_site_option('multilipi_selected_langs');
delete_option('multilipi_slug_map');
delete_site_option('multilipi_slug_map');
delete_option('multilipi_subdir_selected_langs');
delete_site_option('multilipi_subdir_selected_langs');
delete_option('mlms_subdir_needs_sync');
delete_site_option('mlms_subdir_needs_sync');
delete_option('mlms_plugin_version');
delete_site_option('mlms_plugin_version');
delete_option('mlms_flush_rewrite_needed');
delete_site_option('mlms_flush_rewrite_needed');
delete_option('mlms_notice_dismissed');
delete_site_option('mlms_notice_dismissed');

// Delete Transients
delete_transient('mlms_languages');
delete_site_transient('mlms_languages');

