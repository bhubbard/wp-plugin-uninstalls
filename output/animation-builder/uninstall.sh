#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anibu_global_animations'
wp option delete 'anibu_options'
wp option delete 'toast_sta_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anibu_page_animations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anibu_page_animations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anibu_page_animations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anibu_page_animations'"
