#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_date_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_date_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_date_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_date_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_tid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_tid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_tid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_tid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_date_start'"
