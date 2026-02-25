#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghetto_slide_width'
wp option delete 'ghetto_slide_height'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'destination_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghetto_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghetto_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghetto_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghetto_caption'"
