#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blockwi_allow_remote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blockwi_allow_remote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blockwi_allow_remote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blockwi_allow_remote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blockwi_report_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blockwi_report_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blockwi_report_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blockwi_report_cache'"
