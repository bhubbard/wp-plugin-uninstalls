#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apbox_font_size'
wp option delete 'apbox_button_color'
wp option delete 'apbox_currency'
wp option delete 'apbox_heading_level'
wp option delete 'apbox_button_text'
wp option delete 'apbox_delete_data_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apbox_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apbox_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apbox_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apbox_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apbox_affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apbox_affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apbox_affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apbox_affiliate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apbox_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apbox_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apbox_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apbox_rating'"
