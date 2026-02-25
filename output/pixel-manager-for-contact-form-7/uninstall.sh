#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmwplw_facebook_pixel_id'
wp option delete 'gmwplw_gtag_pixel_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwplw_facebook_pixel_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwplw_facebook_pixel_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwplw_facebook_pixel_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwplw_facebook_pixel_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwplw_enable_facebook_pixel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwplw_enable_facebook_pixel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwplw_enable_facebook_pixel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwplw_enable_facebook_pixel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwplw_gtag_pixel_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwplw_gtag_pixel_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwplw_gtag_pixel_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwplw_gtag_pixel_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwplw_enable_gtag_pixel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwplw_enable_gtag_pixel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwplw_enable_gtag_pixel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwplw_enable_gtag_pixel'"
