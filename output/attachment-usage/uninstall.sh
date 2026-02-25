#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'au_attachment_usage_found'
wp option delete 'au_color_status'
wp option delete 'au_auto_sync'
wp option delete 'au_filter_by_usage'
wp option delete 'au_display_usage_listview'
wp option delete 'sidebars_widgets'
wp option delete 'widget_media_image'
wp option delete 'widget_media_gallery'
wp option delete 'widget_media_audio'
wp option delete 'widget_media_video'
wp option delete 'au_is_rating_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'au_attachment_item_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'au_attachment_item_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'au_attachment_item_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'au_attachment_item_usage'"
