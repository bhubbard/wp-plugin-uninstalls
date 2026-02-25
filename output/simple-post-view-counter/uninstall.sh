#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpvc_exclude_admins'
wp option delete 'simpvc_display_position'
wp option delete 'simpvc_show_on_homepage'
wp option delete 'simpvc_show_on_archive'
wp option delete 'widget_simpvc_most_viewed_widget'

# Delete Transients
wp transient delete 'simpvc_popular_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simpvc_last_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simpvc_last_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simpvc_last_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simpvc_last_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simpvc_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simpvc_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simpvc_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simpvc_post_views_count'"
