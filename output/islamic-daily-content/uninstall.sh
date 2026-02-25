#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'isladaco_%'"
wp option delete 'isladaco_quran_enabled'
wp option delete 'isladaco_hadith_enabled'
wp option delete 'isladaco_post_time'
wp option delete 'isladaco_post_status'
wp option delete 'isladaco_quran_category'
wp option delete 'isladaco_hadith_category'

# Delete Transients
wp transient delete 'isladaco_activation_notice'

# Clear Cron Jobs
wp cron event delete 'isladaco_daily_quran_post'
wp cron event delete 'isladaco_daily_hadith_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isladaco_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isladaco_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isladaco_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isladaco_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isladaco_surah'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isladaco_surah'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isladaco_surah'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isladaco_surah'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isladaco_ayah'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isladaco_ayah'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isladaco_ayah'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isladaco_ayah'"
