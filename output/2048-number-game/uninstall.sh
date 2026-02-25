#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2048_options'
wp option delete 'wp2048_custom'
wp option delete 'wp2048_highscore'
wp option delete 'wp2048_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp2048_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp2048_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp2048_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp2048_score'"
