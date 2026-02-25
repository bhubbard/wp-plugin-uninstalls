#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmcp_rewrite_rules'

# Delete Transients
wp transient delete 'lmcp_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmcp_custom_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmcp_custom_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmcp_custom_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmcp_custom_permalink'"
