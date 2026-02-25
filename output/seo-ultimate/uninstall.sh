#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_ultimate'
wp option delete 'su_version'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'googleplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
