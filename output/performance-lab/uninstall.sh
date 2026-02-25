#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'perflab_aao_disabled_options'
wp option delete 'perflab_modules_settings'

# Delete Transients
wp transient delete 'perflab_set_object_cache_dropin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
