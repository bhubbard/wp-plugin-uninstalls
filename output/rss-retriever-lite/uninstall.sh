#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RSSRTVR_LITE_MAX_EXEC_TIME'
wp option delete 'RSSRTVR_LITE_CRON_MAGIC'

# Clear Cron Jobs
wp cron event delete 'rssrtvr_lite_update_by_wp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rssrtvr_rss_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rssrtvr_rss_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rssrtvr_rss_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rssrtvr_rss_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rssrtvr_post_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rssrtvr_post_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rssrtvr_post_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rssrtvr_post_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rssrtvr_post_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rssrtvr_post_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rssrtvr_post_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rssrtvr_post_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rssrtvr_post_lifetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rssrtvr_post_lifetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rssrtvr_post_lifetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rssrtvr_post_lifetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rssrtvr_thumb_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rssrtvr_thumb_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rssrtvr_thumb_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rssrtvr_thumb_source'"
