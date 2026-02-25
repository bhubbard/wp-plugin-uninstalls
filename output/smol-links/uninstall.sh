#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smol_links_options'

# Delete Transients
wp transient delete 'smol_links_error'
wp transient delete 'smol_links_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smol_links_long_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smol_links_long_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smol_links_long_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smol_links_long_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smol_links_short_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smol_links_short_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smol_links_short_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smol_links_short_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smol_links_short_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smol_links_short_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smol_links_short_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smol_links_short_code'"
