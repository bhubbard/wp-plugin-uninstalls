#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woopt_actions'
wp option delete 'woopt_features'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopt_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopt_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopt_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopt_actions'"
