#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsmssr_posttype_settings_options'
wp option delete 'wsmssr_question'
wp option delete 'wsmssr_thank_you_html'
wp option delete 'wsmssr_thank_you_heading_html'
wp option delete 'wsmssr_icon_color_html'
wp option delete 'wsmssr_icon_hover_color_html'
wp option delete 'wsmssr_fontawesome_toggle_html'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsmssr_rating_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsmssr_rating_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsmssr_rating_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsmssr_rating_avg'"
