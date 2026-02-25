#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vertical_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vertical_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vertical_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vertical_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_url'"
