#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsppro_ga_profile'
wp option delete 'wprtsp_upgrade_required'
wp option delete 'wprtsp_firstrun'
wp option delete 'wprtsp'

# Delete Transients
wp transient delete 'wpsppro_ga_rtusers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socialproof'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socialproof'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socialproof'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socialproof'"
