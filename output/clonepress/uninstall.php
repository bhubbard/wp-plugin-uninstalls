<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clonepress_roles');
delete_site_option('clonepress_roles');
delete_option('clonepress_types_enabled');
delete_site_option('clonepress_types_enabled');
delete_option('clonepress_show_in_row_actions');
delete_site_option('clonepress_show_in_row_actions');
delete_option('clonepress_duplicate_label');
delete_site_option('clonepress_duplicate_label');
delete_option('clonepress_duplicate_post_status');
delete_site_option('clonepress_duplicate_post_status');
delete_option('clonepress_duplicate_suffix');
delete_site_option('clonepress_duplicate_suffix');
delete_option('clonepress_duplicate_redirect');
delete_site_option('clonepress_duplicate_redirect');
delete_option('clonepress_show_in_admin_bar');
delete_site_option('clonepress_show_in_admin_bar');
delete_option('clonepress_show_in_bulk_actions');
delete_site_option('clonepress_show_in_bulk_actions');
delete_option('clonepress_show_in_metabox');
delete_site_option('clonepress_show_in_metabox');
delete_option('clonepress_settings');
delete_site_option('clonepress_settings');

// Delete Transients
delete_transient('clonepress_reset_notice');
delete_site_transient('clonepress_reset_notice');

