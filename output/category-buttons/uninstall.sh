#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_basic_settings'
wp option delete 'cb_style_settings'
wp option delete 'woocommerce_category_buttons_option_name'
wp option delete 'ryvenia_style_settings_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
