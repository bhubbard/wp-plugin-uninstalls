#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'star_color'
wp option delete 'btn_color'
wp option delete 'display_number'
wp option delete 'sdvts_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'star_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"
