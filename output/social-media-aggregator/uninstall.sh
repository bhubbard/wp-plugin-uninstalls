#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'facebook_page'
wp option delete 'twitter_page'
wp option delete 'instagram_page'
wp option delete 'youtube_page'
wp option delete 'vimeo_page'
wp option delete 'rss_page'

# Clear Cron Jobs
wp cron event delete 'run_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_author'"
