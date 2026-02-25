#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MindCatColors'
wp option delete 'mindcat_image_noimage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mindcat_image_%'"
wp option delete 'mindcat_image_primary'
wp option delete 'mindcat_image_secondary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mindcat_image_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mindcat_image_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mindcat_image_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mindcat_image_primary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mindcat_image_secondary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mindcat_image_secondary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mindcat_image_secondary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mindcat_image_secondary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mindcat_image_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mindcat_image_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mindcat_image_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mindcat_image_%'"
