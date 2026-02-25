#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vk_filter_search'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vkfs_search_result_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vkfs_search_result_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vkfs_search_result_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vkfs_search_result_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vkfs_display_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vkfs_display_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vkfs_display_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vkfs_display_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vkfs_display_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vkfs_display_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vkfs_display_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vkfs_display_archive'"
