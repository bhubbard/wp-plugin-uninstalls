#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aruba_hispeed_cache_options'
wp option delete 'ahsc_do_cache_warmer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ping_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ping_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ping_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ping_status'"
