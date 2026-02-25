<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmwam_options');
delete_site_option('wpmwam_options');
delete_option('wicked_folders_pro_license_key');
delete_site_option('wicked_folders_pro_license_key');
delete_option('wicked_folders_pro_license_data');
delete_site_option('wicked_folders_pro_license_data');
delete_option('wicked_folders_show_folder_contents_in_tree_view');
delete_site_option('wicked_folders_show_folder_contents_in_tree_view');
delete_option('wicked_folders_sync_upload_folder_dropdown');
delete_site_option('wicked_folders_sync_upload_folder_dropdown');
delete_option('wicked_folders_include_children');
delete_site_option('wicked_folders_include_children');
delete_option('wicked_folders_include_attachment_children');
delete_site_option('wicked_folders_include_attachment_children');
delete_option('wicked_folders_show_hierarchy_in_folder_column');
delete_site_option('wicked_folders_show_hierarchy_in_folder_column');
delete_option('wicked_folders_show_unassigned_folder');
delete_site_option('wicked_folders_show_unassigned_folder');
delete_option('wicked_folders_show_folder_search');
delete_site_option('wicked_folders_show_folder_search');
delete_option('wicked_folders_show_item_counts');
delete_site_option('wicked_folders_show_item_counts');
delete_option('wicked_folders_show_breadcrumbs');
delete_site_option('wicked_folders_show_breadcrumbs');
delete_option('wicked_folders_enable_ajax_nav');
delete_site_option('wicked_folders_enable_ajax_nav');
delete_option('wicked_folders_enable_context_menus');
delete_site_option('wicked_folders_enable_context_menus');
delete_option('wicked_folders_colors');
delete_site_option('wicked_folders_colors');
delete_option('wicked_folders_enable_lazy_dynamic_folders');
delete_site_option('wicked_folders_enable_lazy_dynamic_folders');
delete_option('wicked_folders_post_types');
delete_site_option('wicked_folders_post_types');
delete_option('wicked_folders_dynamic_folder_post_types');
delete_site_option('wicked_folders_dynamic_folder_post_types');
delete_option('wicked_folders_taxonomies');
delete_site_option('wicked_folders_taxonomies');
delete_option('wicked_folders_tax_name_migration_done');
delete_site_option('wicked_folders_tax_name_migration_done');
delete_option('wicked_folders_db_version');
delete_site_option('wicked_folders_db_version');
delete_option('wicked_folders_enable_folder_pages');
delete_site_option('wicked_folders_enable_folder_pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wf_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wf_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wf_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wf_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wf_owner_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wf_owner_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wf_owner_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wf_owner_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wf_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wf_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wf_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wf_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wicked_folders_plugin_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wicked_folders_plugin_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wicked_folders_plugin_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wicked_folders_plugin_state' ) );

