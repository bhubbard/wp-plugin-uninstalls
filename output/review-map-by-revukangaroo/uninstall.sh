#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewmapby_revkang_custom_map_key_map'
wp option delete 'reviewmapby_revkang_city_api'
wp option delete 'reviewmapby_revkang_cities_api'
wp option delete 'reviewmapby_revkang_state_api'
wp option delete 'reviewmapby_revkang_show_map_api'
wp option delete 'reviewmapby_revkang_show_posts_api'
wp option delete 'reviewmapby_revkang_count_api'
wp option delete 'reviewmapby_revkang_pincount_api'
wp option delete 'reviewmapby_revkang_map_zoom_level'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
