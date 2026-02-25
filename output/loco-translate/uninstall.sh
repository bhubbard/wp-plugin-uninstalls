#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loco_settings'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'theme_roots'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loco_prefs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loco_prefs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loco_prefs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loco_prefs'"
