#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seotoolset_settings'

# Delete Transients
wp transient delete 'bcseo_subscription'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_seotoolset_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_seotoolset_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_seotoolset_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seotoolset_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seotoolset_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seotoolset_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seotoolset_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seotoolset_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seotoolset_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seotoolset_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seotoolset_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seotoolset_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seotoolset_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seotoolset_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seotoolset_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seotoolset_meta_description'"
