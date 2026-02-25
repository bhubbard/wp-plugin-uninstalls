#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_js_google_fonts_subsets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_p_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_p_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_p_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_p_video'"
