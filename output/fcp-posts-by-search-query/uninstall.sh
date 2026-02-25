#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%variants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%variants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%variants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%query'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%posts'"
