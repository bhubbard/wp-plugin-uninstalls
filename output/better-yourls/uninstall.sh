#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_yourls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_better_yourls_short_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_better_yourls_short_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_better_yourls_short_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_better_yourls_short_link'"
