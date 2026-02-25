#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bonaire_options'

# Delete Transients
wp transient delete 'bonaire_wpcf7_queue'
wp transient delete 'bonaire_wpcf7_incoming'
wp transient delete 'bonaire_reset_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meta'"
