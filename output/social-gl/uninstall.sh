#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialgl_logo_id'
wp option delete 'socialgl_cover_image_id'
wp option delete 'socialgl_description'
wp option delete 'socialgl_items_per_page'
wp option delete 'socialgl_mode'
wp option delete 'socialgl_responsive'
wp option delete 'socialgl_seo_title'
wp option delete 'socialgl_seo_description'
wp option delete 'socialgl_social_links'
wp option delete 'socialgl_social_icons'
wp option delete 'socialgl_dark_logo_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_image_id'"
