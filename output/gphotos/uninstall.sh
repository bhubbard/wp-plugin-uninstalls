#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option1'
wp option delete 'num_album'
wp option delete 'order_album'
wp option delete 'check1'
wp option delete 'effect'
wp option delete 'effect_pic'
wp option delete 'background_color'
wp option delete 'text_color'
wp option delete 'border_pixel'
wp option delete 'link_color'
wp option delete 'padding'
wp option delete 'box_shadow_pixel'
wp option delete 'box_shadow'
wp option delete 'margin_bottom'
wp option delete 'border_pixel_pic'
wp option delete 'border_rad_pixel_pic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_album'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_album'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_album'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_album'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comm'"
