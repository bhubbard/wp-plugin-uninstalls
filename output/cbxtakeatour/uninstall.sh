#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxtakeatour_version'

# Delete Transients
wp transient delete 'cbxtakeatour_activated_notice'
wp transient delete 'cbxtakeatour_upgraded_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxtourmeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxtourmeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxtourmeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxtourmeta'"
