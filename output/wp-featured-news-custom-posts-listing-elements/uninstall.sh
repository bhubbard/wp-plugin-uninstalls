#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_js_google_fonts_subsets'
wp option delete 'title_font_settings'
wp option delete 'headline_font_settings'
wp option delete 'meta_font_settings'
wp option delete 'excerpt_font_settings'
wp option delete 'button_font_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_color'"
