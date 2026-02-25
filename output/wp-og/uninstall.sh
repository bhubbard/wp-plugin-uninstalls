#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'og-site_name'
wp option delete 'og-title'
wp option delete 'og-description'
wp option delete 'og-app_id'
wp option delete 'og-image'
wp option delete 'og-post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_og-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_og-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_og-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_og-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_og-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_og-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_og-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_og-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_og-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_og-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_og-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_og-image'"
