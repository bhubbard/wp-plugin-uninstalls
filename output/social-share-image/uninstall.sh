#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssi_color1'
wp option delete 'ssi_color2'
wp option delete 'ssi_gredient_direction'
wp option delete 'ssi_featImg_override'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_color1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_color1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_color1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_color1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_color2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_color2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_color2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_color2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_gredient_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_gredient_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_gredient_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_gredient_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_image'"
