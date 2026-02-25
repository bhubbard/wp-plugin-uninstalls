#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psmg_ai_mode'
wp option delete 'psmg_ai_api_key'
wp option delete 'psmg_gallery_columns'
wp option delete 'psmg_primary_color'
wp option delete 'psmg_show_search'
wp option delete 'psmg_show_titles'
wp option delete 'psmg_show_filter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psmg_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psmg_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psmg_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psmg_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psmg_ai_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psmg_ai_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psmg_ai_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psmg_ai_cache'"
