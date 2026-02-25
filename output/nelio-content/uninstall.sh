#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nc_feeds'
wp option delete 'nc_efi_placeholder_id'
wp option delete 'nc_ics_key'
wp option delete 'nc_external_calendars'
wp option delete 'nc_wizard_requested'
wp option delete 'nc_ga_refresh_token'
wp option delete 'nc_ga_token_error'
wp option delete 'nc_ga_token'
wp option delete 'nc_ga_token_expiration'
wp option delete 'nc_site_id'
wp option delete 'nc_api_secret'
wp option delete 'nc_has_social_profiles'
wp option delete 'nc_statuses'
wp option delete 'nc_reshare_last_day'
wp option delete 'nc_version'
wp option delete 'nelio-content_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'nc_site_limits'
wp option delete 'nc_subscription'

# Delete Transients
wp transient delete 'nelio_content_news'
wp transient delete 'nc_automation_groups'
wp transient delete 'nc_active_promos'

# Clear Cron Jobs
wp cron event delete 'nelio_content_analytics_today_cron_hook'
wp cron event delete 'nelio_content_analytics_month_cron_hook'
wp cron event delete 'nelio_content_analytics_other_cron_hook'
wp cron event delete 'nelio_content_analytics_top_cron_hook'
wp cron event delete 'nelio_content_update_post_in_cloud'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelioefi_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelioefi_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelioefi_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelioefi_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nelioefi_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nelioefi_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nelioefi_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nelioefi_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_auto_efi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_auto_efi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_auto_efi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_auto_efi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_exclude_from_auto_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_exclude_from_auto_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_exclude_from_auto_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_exclude_from_auto_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_include_in_auto_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_include_in_auto_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_include_in_auto_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_include_in_auto_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_auto_share_end_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_auto_share_end_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_auto_share_end_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_auto_share_end_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_permalink_query_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_permalink_query_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_permalink_query_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_permalink_query_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_network_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_network_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_network_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_network_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_sync_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_sync_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_sync_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_sync_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_following_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_following_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_following_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_following_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_automation_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_automation_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_automation_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_automation_sources'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_post_highlights'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_post_highlights'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_post_highlights'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_post_highlights'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_author_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_author_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_author_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_author_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_publication_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_publication_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_publication_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_publication_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_cloud_sync_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_cloud_sync_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_cloud_sync_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_cloud_sync_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_discarded_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_discarded_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_discarded_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_discarded_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_suggested_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_suggested_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_suggested_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_suggested_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nc_included_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nc_included_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nc_included_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nc_included_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta'"
