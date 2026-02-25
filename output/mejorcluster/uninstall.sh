#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mejorcluster_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mejorcluster-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mejorcluster-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mejorcluster-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mejorcluster-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mejorcluster-desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mejorcluster-desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mejorcluster-desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mejorcluster-desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mejorcluster-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mejorcluster-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mejorcluster-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mejorcluster-image'"
