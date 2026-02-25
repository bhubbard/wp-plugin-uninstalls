#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'lswss_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sett'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sett'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sett'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sett'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%design_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%design_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%design_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%design_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%show_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%show_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%show_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%show_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%show_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%logo_grid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%logo_grid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%logo_grid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%logo_grid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%ipad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%ipad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%ipad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ipad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%tablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%tablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%tablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%slide_to_show_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%slide_to_show_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%slide_to_show_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slide_to_show_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%slide_to_column_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%slide_to_column_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%slide_to_column_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slide_to_column_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%arrow_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%arrow_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%arrow_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%arrow_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%pagination_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%pagination_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%pagination_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pagination_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%autoplay_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%autoplay_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%autoplay_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%autoplay_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%autoplay_speed_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%autoplay_speed_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%autoplay_speed_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%autoplay_speed_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%speed_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%speed_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%speed_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%speed_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%loop_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%loop_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%loop_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%loop_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%centermode_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%centermode_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%centermode_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%centermode_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%space_between_carousel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%space_between_carousel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%space_between_carousel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%space_between_carousel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%new_tab'"
