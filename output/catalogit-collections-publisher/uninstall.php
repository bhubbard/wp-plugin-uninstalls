<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catalogit_needs_rewrite_flush');
delete_site_option('catalogit_needs_rewrite_flush');
delete_option('catalogit_plugin_custom_catalogit_api_base');
delete_site_option('catalogit_plugin_custom_catalogit_api_base');
delete_option('catalogit_plugin_disable_ssl_verification');
delete_site_option('catalogit_plugin_disable_ssl_verification');
delete_option('catalogit_plugin_access_token');
delete_site_option('catalogit_plugin_access_token');
delete_option('catalogit_plugin_account_id');
delete_site_option('catalogit_plugin_account_id');
delete_option('catalogit_plugin_page_size');
delete_site_option('catalogit_plugin_page_size');
delete_option('catalogit_plugin_folder_entries_view');
delete_site_option('catalogit_plugin_folder_entries_view');
delete_option('catalogit_plugin_folder_entry_show_folder_name');
delete_site_option('catalogit_plugin_folder_entry_show_folder_name');
delete_option('catalogit_plugin_folder_entry_show_folder_description');
delete_site_option('catalogit_plugin_folder_entry_show_folder_description');
delete_option('catalogit_plugin_folder_entry_back_button_label');
delete_site_option('catalogit_plugin_folder_entry_back_button_label');
delete_option('catalogit_plugin_folder_entry_show_back_button');
delete_site_option('catalogit_plugin_folder_entry_show_back_button');
delete_option('catalogit_plugin_folder_entry_show_entry_name');
delete_site_option('catalogit_plugin_folder_entry_show_entry_name');
delete_option('catalogit_plugin_folder_entry_show_entry_image');
delete_site_option('catalogit_plugin_folder_entry_show_entry_image');
delete_option('catalogit_plugin_folder_entry_show_entry_artist');
delete_site_option('catalogit_plugin_folder_entry_show_entry_artist');
delete_option('catalogit_plugin_folder_entry_show_entry_description');
delete_site_option('catalogit_plugin_folder_entry_show_entry_description');
delete_option('catalogit_plugin_single_entry_show_properties');
delete_site_option('catalogit_plugin_single_entry_show_properties');
delete_option('catalogit_plugin_single_entry_properties_position');
delete_site_option('catalogit_plugin_single_entry_properties_position');
delete_option('catalogit_plugin_single_entry_show_back');
delete_site_option('catalogit_plugin_single_entry_show_back');
delete_option('catalogit_plugin_single_entry_back_label');
delete_site_option('catalogit_plugin_single_entry_back_label');
delete_option('catalogit_plugin_single_entry_show_nav');
delete_site_option('catalogit_plugin_single_entry_show_nav');
delete_option('catalogit_plugin_single_entry_prev_label');
delete_site_option('catalogit_plugin_single_entry_prev_label');
delete_option('catalogit_plugin_single_entry_next_label');
delete_site_option('catalogit_plugin_single_entry_next_label');
delete_option('catalogit_plugin_single_entry_columns');
delete_site_option('catalogit_plugin_single_entry_columns');
delete_option('catalogit_plugin_single_entry_show_classification');
delete_site_option('catalogit_plugin_single_entry_show_classification');
delete_option('catalogit_plugin_single_entry_show_description');
delete_site_option('catalogit_plugin_single_entry_show_description');
delete_option('catalogit_plugin_single_entry_show_thumbnails');
delete_site_option('catalogit_plugin_single_entry_show_thumbnails');
delete_option('catalogit_plugin_single_entry_show_title');
delete_site_option('catalogit_plugin_single_entry_show_title');
delete_option('catalogit_plugin_show_folder_name');
delete_site_option('catalogit_plugin_show_folder_name');
delete_option('catalogit_plugin_show_folder_items_count');
delete_site_option('catalogit_plugin_show_folder_items_count');
delete_option('catalogit_plugin_folders_view');
delete_site_option('catalogit_plugin_folders_view');
delete_option('catalogit_plugin_folders_grids_per_row');
delete_site_option('catalogit_plugin_folders_grids_per_row');
delete_option('catalogit_plugin_entries_grids_per_row');
delete_site_option('catalogit_plugin_entries_grids_per_row');
delete_option('catalogit_plugin_scroll_to_top');
delete_site_option('catalogit_plugin_scroll_to_top');
delete_option('catalogit_plugin_show_folder_description');
delete_site_option('catalogit_plugin_show_folder_description');
delete_option('catalogit_plugin_single_column');
delete_site_option('catalogit_plugin_single_column');

// Delete Transients
delete_transient('catalogit_pages');
delete_site_transient('catalogit_pages');

