#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'googlesitekit_adsense_settings'
wp option delete 'googlesitekit_analytics_settings'
wp option delete 'googlesitekit_active_modules'
wp option delete 'googlesitekit-active-modules'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amp_queried_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amp_queried_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amp_queried_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amp_queried_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
