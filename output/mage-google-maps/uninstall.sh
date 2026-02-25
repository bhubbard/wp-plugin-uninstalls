#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mage_maps'
wp option delete 'widget_mage_maps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mage_%'"

# Delete Transients
wp transient delete 'mage_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mage_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mage_zip'"
