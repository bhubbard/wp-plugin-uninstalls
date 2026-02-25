#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_ad_client'
wp option delete 'google_ad_slot'
wp option delete 'google_ad_width'
wp option delete 'google_ad_height'
wp option delete 'googlenews_first_time'
wp option delete 'googlenews_last_check'
wp option delete 'googlenews_scraped'
wp option delete 'googlenews_job_option'

# Clear Cron Jobs
wp cron event delete 'googlenews_hook_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
