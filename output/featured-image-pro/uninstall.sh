#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featured_image_pro_settings'
wp option delete 'dnh_dismissed_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_image_pro_premium_nag_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_image_pro_premium_nag_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_image_pro_premium_nag_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_image_pro_premium_nag_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_image_pro_premium_nag2_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_image_pro_premium_nag2_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_image_pro_premium_nag2_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_image_pro_premium_nag2_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dnh_dismissed_notices'"
