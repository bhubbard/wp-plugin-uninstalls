#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_latest_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_latest_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_latest_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_latest_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_attachment_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_imported_youtube_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_imported_youtube_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_imported_youtube_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_imported_youtube_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_external_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_themes_parent_show_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_import_import_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_import_import_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_import_import_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_import_import_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_youtube_playlist_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_youtube_playlist_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_youtube_playlist_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_youtube_playlist_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondline_youtube_channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondline_youtube_channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondline_youtube_channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondline_youtube_channel_id'"
