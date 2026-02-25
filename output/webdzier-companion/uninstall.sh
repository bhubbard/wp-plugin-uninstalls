#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hg_media_id'
wp option delete 'widget_archives'
wp option delete 'widget_search'
wp option delete 'widget_hotel_galaxy_service_widget'
wp option delete 'sidebars_widgets'
wp option delete 'hotelgalaxy_media_id'
wp option delete 'hg_details_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'hg_room_settings_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'hg_room_settings_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'hg_room_settings_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hg_room_settings_%'"
