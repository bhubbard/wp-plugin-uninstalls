#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgpw_general_tab_enabled'
wp option delete 'wgpw_badge_type'
wp option delete 'wgpw_badge_position'
wp option delete 'wgpw_warranty_badge_text'
wp option delete 'wgpw_guarantee_badge_text'
wp option delete 'wgpw_tooltip_bg_color'
wp option delete 'wgpw_tooltip_text_color'
wp option delete 'wgpw_tooltip_font_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgpw_warranties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgpw_warranties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgpw_warranties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgpw_warranties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgpw_has_valid_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgpw_has_valid_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgpw_has_valid_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgpw_has_valid_warranty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgpw_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgpw_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgpw_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgpw_warranty'"
