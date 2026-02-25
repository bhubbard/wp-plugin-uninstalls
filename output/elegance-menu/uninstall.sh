#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elegance_menu_currency'
wp option delete 'elegance_menu_placeholder_image'
wp option delete 'elegance_menu_char_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elegance_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elegance_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elegance_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elegance_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elegance_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elegance_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elegance_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elegance_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
