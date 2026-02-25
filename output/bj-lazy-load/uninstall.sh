#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bj_lazy_load_skip_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bj_lazy_load_skip_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bj_lazy_load_skip_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bj_lazy_load_skip_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%'"
