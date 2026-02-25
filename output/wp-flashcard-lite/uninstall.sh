#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_flashcard_width_setting'
wp option delete 'wp_flashcard_height_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'falshcard_slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'falshcard_slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'falshcard_slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'falshcard_slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flashcard_short_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flashcard_short_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flashcard_short_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flashcard_short_code'"
