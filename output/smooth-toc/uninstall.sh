#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smoothtoc_title'
wp option delete 'smoothtoc_position'
wp option delete 'smoothtoc_headings'
wp option delete 'smoothtoc_bg_color'
wp option delete 'smoothtoc_text_color'
wp option delete 'smoothtoc_font_size'
wp option delete 'smoothtoc_width'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smoothtoc_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smoothtoc_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smoothtoc_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smoothtoc_disabled'"
