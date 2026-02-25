#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_notion_addon_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_notion_addon_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_notion_addon_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_notion_addon_notice_dismissed'"
