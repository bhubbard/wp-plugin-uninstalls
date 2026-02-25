#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leads_created_by_cf7_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leads_created_by_cf7_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leads_created_by_cf7_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leads_created_by_cf7_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leads_created_in_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leads_created_in_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leads_created_in_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leads_created_in_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leads_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leads_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leads_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leads_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leads_handled_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leads_handled_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leads_handled_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leads_handled_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'leads_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'leads_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'leads_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'leads_%'"
