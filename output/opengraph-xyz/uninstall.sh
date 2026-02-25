#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opengraph_xyz_api_key'

# Delete Transients
wp transient delete 'opengraph_xyz_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opengraph-xyz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opengraph-xyz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opengraph-xyz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opengraph-xyz'"
