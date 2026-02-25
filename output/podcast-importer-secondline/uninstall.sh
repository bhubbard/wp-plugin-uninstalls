#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'secondline_importer_cron'
wp cron event delete 'secondline_import_cron_process_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secondline_image_retry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secondline_image_retry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secondline_image_retry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secondline_image_retry_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secondline_image_import_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secondline_image_import_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secondline_image_import_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secondline_image_import_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_imported_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_imported_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_imported_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_imported_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_episode_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_episode_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_episode_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_episode_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_season_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_season_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_season_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_season_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_audiourl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_audiourl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_audiourl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_audiourl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_rss_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_rss_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_rss_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_rss_feed'"
