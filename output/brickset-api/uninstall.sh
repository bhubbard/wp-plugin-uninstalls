#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brickset-api-settings'
wp option delete 'brickset_oembed_key'

# Delete Transients
wp transient delete 'bs_api_contributors'
wp transient delete '_bs_api_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brickset_user_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brickset_user_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brickset_user_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brickset_user_hash'"
