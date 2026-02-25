#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SFI_NIRUS_PNG_SITE_LOGO_PATH'
wp option delete 'SFI_NIRUS_PNG_FOLDER_PATH'
wp option delete 'SFI_NIRUS_TWT_OPTION'
wp option delete 'SFI_NIRUS_FB_OPTION'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfi-nirus-featured-png'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfi-nirus-featured-png'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfi-nirus-featured-png'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfi-nirus-featured-png'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfi-nirus-image-hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfi-nirus-image-hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfi-nirus-image-hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfi-nirus-image-hash'"
