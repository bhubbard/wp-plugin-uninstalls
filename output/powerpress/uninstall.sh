#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'powerpress_network_title'
wp option delete 'powerpress_network_map'
wp option delete 'powerpress_network'
wp option delete 'powerpress_network_id'
wp option delete 'powerpress_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerpress_feed_%'"
wp option delete 'powerpress_network_creds'
wp option delete 'powerpress_network_temp_client'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-l'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerpress_posttype_%'"
wp option delete 'powerpress_bplayer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerpress_cat_feed_%'"
wp option delete 'powerpress_taxonomy_podcasting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'powerpress_taxonomy_%'"
wp option delete 'powerpress_feed'
wp option delete 'powerpress_user_check_completed'
wp option delete 'powerpress_chartable_check'
wp option delete 'powerpress_creds'
wp option delete 'pp_programmatic_enabled_shows'
wp option delete 'pp_progad_sync_error'
wp option delete 'pp_progad_sync_success'
wp option delete 'powerpress_posttype-podcasting'
wp option delete 'powerpress_posttype_podcasting'
wp option delete 'podPress_config'
wp option delete 'powerpress_migrate_queued'
wp option delete 'powerpress_migrate_status'
wp option delete 'powerpress_multisite'
wp option delete 'lit_error'
wp option delete 'lit_error_msg'
wp option delete 'powerpress_stats_notice_dismissed'
wp option delete 'powerpress_artwork_notice_dismissed'
wp option delete 'powerpress_dismissed_notices'
wp option delete 'powerpress_feed_podcast'
wp option delete 'powerpress_stats'
wp option delete 'blubrry_manage_media'
wp option delete 'powerpress_migrate_results'
wp option delete 'powerpress_migrate_completed'
wp option delete 'powerpress_track_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed'"
wp option delete 'update_plugins'
wp option delete '_site_transient_update_plugins'
wp option delete 'powerpress_errors'
wp option delete 'rss_image'
wp option delete 'pod_player_location'
wp option delete 'pod_audio_width'
wp option delete 'pod_player_width'
wp option delete 'pod_player_height'
wp option delete 'pod_itunes_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pod_itunes_cat%'"
wp option delete 'pod_itunes_ownername'
wp option delete 'pod_itunes_owneremail'
wp option delete 'rss_language'
wp option delete 'pod_tagline'
wp option delete 'pod_itunes_explicit'
wp option delete 'powerpress_podping_authkey'
wp option delete 'network_general'
wp option delete 'powerpress_temp_client'
wp option delete 'powerpress_blubrry_api_redirect_uri'
wp option delete 'powerpress_onboarding'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_%' OR option_name LIKE '_site_transient_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_mod_%' OR option_name LIKE '_site_transient_feed_mod_%'"

# Clear Cron Jobs
wp cron event delete 'updateProgram'
wp cron event delete 'powerpress_admin_migration_hook'
wp cron event delete 'powerpress_check_for_chartable_hook'
wp cron event delete 'powerpress_sync_progad_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:metamarks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:metamarks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:metamarks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:metamarks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_powerpress_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_powerpress_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_powerpress_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_powerpress_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%:enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%:enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%:enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_default_podcast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_default_podcast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_default_podcast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_default_podcast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podPressPostSpecific'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podPressPostSpecific'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podPressPostSpecific'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podPressPostSpecific'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itunes:duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itunes:duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itunes:duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itunes:duration'"
