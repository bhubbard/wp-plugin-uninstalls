#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viking_button_url'
wp option delete 'viking_source'
wp option delete 'viking_style_color'
wp option delete 'viking_button_alignment'
wp option delete 'viking_button_horizontal_padding'
wp option delete 'viking_button_vertical_padding'
wp option delete 'viking_enable_button'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viking_button_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viking_button_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viking_button_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viking_button_url'"
