#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fetchub_guid_cache'
wp option delete 'fetchub_cron_enabled'
wp option delete 'fetchub_cron_paused'
wp option delete 'fetchub_recent_summaries'
wp option delete 'fetchub_settings'
wp option delete 'fetchub_token'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fetchub_run_%' OR option_name LIKE '_site_transient_fetchub_run_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fetchub_no_new_posts_%' OR option_name LIKE '_site_transient_fetchub_no_new_posts_%'"
wp transient delete 'fetchub_stop_all'
wp transient delete 'fetchub_sched_lock_all'
wp transient delete 'fetchub_upgrade_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fetchub_sched_lock_%' OR option_name LIKE '_site_transient_fetchub_sched_lock_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fetchub_force_once_%' OR option_name LIKE '_site_transient_fetchub_force_once_%'"

# Clear Cron Jobs
wp cron event delete 'fetchub_feed_cron'
wp cron event delete 'fetchub_weekly_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_feed_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_feed_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_feed_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_feed_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_feed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_feed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_feed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_feed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_publication_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_publication_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_publication_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_publication_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_publication_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_publication_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_publication_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_publication_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_source_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_source_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_source_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_source_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_publication_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_publication_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_publication_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_publication_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_topic_fp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_topic_fp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_topic_fp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_topic_fp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_raw_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_raw_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_raw_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_raw_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fetchub_raw_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fetchub_raw_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fetchub_raw_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fetchub_raw_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
