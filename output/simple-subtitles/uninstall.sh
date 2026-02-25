#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_subtitles_version'
wp option delete 'simple_subtitle_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_simple_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_simple_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_simple_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_simple_subtitle'"
