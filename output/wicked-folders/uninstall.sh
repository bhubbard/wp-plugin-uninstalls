#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmwam_options'
wp option delete 'wicked_folders_pro_license_key'
wp option delete 'wicked_folders_pro_license_data'
wp option delete 'wicked_folders_show_folder_contents_in_tree_view'
wp option delete 'wicked_folders_sync_upload_folder_dropdown'
wp option delete 'wicked_folders_include_children'
wp option delete 'wicked_folders_include_attachment_children'
wp option delete 'wicked_folders_show_hierarchy_in_folder_column'
wp option delete 'wicked_folders_show_unassigned_folder'
wp option delete 'wicked_folders_show_folder_search'
wp option delete 'wicked_folders_show_item_counts'
wp option delete 'wicked_folders_show_breadcrumbs'
wp option delete 'wicked_folders_enable_ajax_nav'
wp option delete 'wicked_folders_enable_context_menus'
wp option delete 'wicked_folders_colors'
wp option delete 'wicked_folders_enable_lazy_dynamic_folders'
wp option delete 'wicked_folders_post_types'
wp option delete 'wicked_folders_dynamic_folder_post_types'
wp option delete 'wicked_folders_taxonomies'
wp option delete 'wicked_folders_tax_name_migration_done'
wp option delete 'wicked_folders_db_version'
wp option delete 'wicked_folders_enable_folder_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wf_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wf_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wf_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wf_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wf_owner_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wf_owner_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wf_owner_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wf_owner_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wf_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wf_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wf_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wf_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wicked_folders_plugin_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wicked_folders_plugin_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wicked_folders_plugin_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wicked_folders_plugin_state'"
