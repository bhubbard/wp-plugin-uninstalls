#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_blocks_for_discogs__settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__api_rates'"

# Delete Transients
wp transient delete 'gf_clear_cache_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_id'"
