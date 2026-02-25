#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theta_carousel_slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theta_carousel_slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theta_carousel_slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theta_carousel_slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theta_carousel_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theta_carousel_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theta_carousel_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theta_carousel_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theta_carousel_admin_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theta_carousel_admin_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theta_carousel_admin_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theta_carousel_admin_view'"
