#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sprm_page_id'
wp option delete 'sprm_skin'
wp option delete 'sprm_top_banner'
wp option delete 'sprm_logo'
wp option delete 'sprm_primary_color'
wp option delete 'sprm_hide_image'
wp option delete 'sprm_product_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
