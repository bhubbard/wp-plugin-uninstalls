#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glamour_google_fonts'
wp option delete '_glamour_media_list'
wp option delete '_glamour_colors'
wp option delete '_glamour_global_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css_time'"
wp option delete '_glamour_global_css_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glamour_post_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glamour_post_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glamour_post_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glamour_post_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glamour_css_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glamour_css_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glamour_css_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glamour_css_time'"
