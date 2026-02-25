#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ekatco_plugin_active'
wp option delete 'ekatco_button_text'
wp option delete 'ekatco_bg_color'
wp option delete 'ekatco_text_color'
wp option delete 'ekatco_button_width'
wp option delete 'ekatco_button_height'
wp option delete 'ekatco_padding_tb'
wp option delete 'ekatco_button_padding_lr'
wp option delete 'ekatco_button_radius'
wp option delete 'ekatco_button_font_size'
wp option delete 'ekatco_api_keys_all'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_url'"
