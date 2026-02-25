#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cue_default_theme'
wp option delete 'cue_native_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracks'"
