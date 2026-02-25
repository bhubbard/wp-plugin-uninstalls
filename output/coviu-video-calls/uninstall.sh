#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coviu-video-calls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coviu-video-calls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coviu-video-calls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coviu-video-calls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coviu-video-calls'"
