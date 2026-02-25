#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jamify_hfs_allow_author'
wp option delete 'jamify_hfs_allow_contributor'
wp option delete 'jamify_hfs_insert_header'
wp option delete 'jamify_hfs_insert_body'
wp option delete 'jamify_hfs_insert_footer'
wp option delete 'jamify_hfs_clean_on_uninstall'
wp option delete 'jamify_hfs_insert_header_priority'
wp option delete 'jamify_hfs_insert_body_priority'
wp option delete 'jamify_hfs_insert_footer_priority'
wp option delete 'shfs_script_access_level'
wp option delete 'shfs_insert_header'
wp option delete 'shfs_insert_footer'
wp option delete 'shfs_insert_header_priority'
wp option delete 'shfs_insert_footer_priority'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inpost_head_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inpost_head_script'"
