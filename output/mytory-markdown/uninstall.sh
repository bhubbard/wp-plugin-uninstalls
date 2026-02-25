#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manual_update'
wp option delete 'auto_update_only_writer_visits'
wp option delete 'auto_update_per'
wp option delete 'debug_msg'
wp option delete 'mytory_markdown_engine'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytory_md_visits_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytory_md_visits_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytory_md_visits_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytory_md_visits_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytory_md_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytory_md_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytory_md_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytory_md_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mytory_markdown_etag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mytory_markdown_etag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mytory_markdown_etag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mytory_markdown_etag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytory_md_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytory_md_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytory_md_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytory_md_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytory_md_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytory_md_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytory_md_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytory_md_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytory_md_path_old'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytory_md_path_old'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytory_md_path_old'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytory_md_path_old'"
