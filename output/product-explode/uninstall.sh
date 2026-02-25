#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'label_text_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'label_text_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'label_text_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'label_text_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'position_top_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'position_top_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'position_top_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'position_top_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'position_left_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'position_left_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'position_left_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'position_left_%'"
