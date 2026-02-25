#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'webkima_elements'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'webkima_elements_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'webkima_elements_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'webkima_elements_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'webkima_elements_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webkima_elements_cache_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webkima_elements_cache_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webkima_elements_cache_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webkima_elements_cache_notice'"
