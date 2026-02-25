#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logo_img'
wp option delete 'desktop_width'
wp option delete 'desktop_height'
wp option delete 'tablet_wigth'
wp option delete 'tablet_heigth'
wp option delete 'mobile_width'
wp option delete 'mobile_heigth'
wp option delete 'tablet_width'
wp option delete 'wpspf_toolbar_color'
wp option delete 'wpspf_bg_color'
wp option delete 'wpspf_title_color'
wp option delete 'wpspf_border_color'
wp option delete 'wpspf_row_item'
wp option delete 'tablet_heidht'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sites_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sites_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sites_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sites_url'"
