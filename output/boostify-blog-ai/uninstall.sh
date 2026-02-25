#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boostify_blog_ai_views_refresh_interval'
wp option delete 'boostify_blog_ai_views_auto_append'
wp option delete 'boostify_blog_ai_views_auto_format'
wp option delete 'boostify_blog_ai_views_auto_display'
wp option delete 'boostify_schedule_settings'
wp option delete 'boostify_blog_ai_schedule_settings'

# Delete Transients
wp transient delete 'boostify_cron_started'

# Clear Cron Jobs
wp cron event delete 'boostify_blog_ai_post_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_keywords'"
