#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'v7pa_title_text'
wp option delete 'v7pa_button_text'
wp option delete 'v7pa_accent_color'
wp option delete 'v7pa_text_color'
wp option delete 'v7pa_bg_color'
wp option delete 'v7pa_border_radius'
wp option delete 'v7pa_show_brand'
wp option delete 'v7pa_show_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_v7pa_alt_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_v7pa_alt_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_v7pa_alt_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_v7pa_alt_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand'"
