#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'controls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_mp3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_mp3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_mp3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_mp3'"
