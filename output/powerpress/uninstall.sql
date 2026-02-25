-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('powerpress_network_title', 'powerpress_network_map', 'powerpress_network', 'powerpress_network_id', 'powerpress_general', 'powerpress_network_creds', 'powerpress_network_temp_client', 'powerpress_bplayer', 'powerpress_taxonomy_podcasting', 'powerpress_feed', 'powerpress_user_check_completed', 'powerpress_chartable_check', 'powerpress_creds', 'pp_programmatic_enabled_shows', 'pp_progad_sync_error', 'pp_progad_sync_success', 'powerpress_posttype-podcasting', 'powerpress_posttype_podcasting', 'podPress_config', 'powerpress_migrate_queued', 'powerpress_migrate_status', 'powerpress_multisite', 'lit_error', 'lit_error_msg', 'powerpress_stats_notice_dismissed', 'powerpress_artwork_notice_dismissed', 'powerpress_dismissed_notices', 'powerpress_feed_podcast', 'powerpress_stats', 'blubrry_manage_media', 'powerpress_migrate_results', 'powerpress_migrate_completed', 'powerpress_track_number', 'update_plugins', '_site_transient_update_plugins', 'powerpress_errors', 'rss_image', 'pod_player_location', 'pod_audio_width', 'pod_player_width', 'pod_player_height', 'pod_itunes_image', 'pod_itunes_ownername', 'pod_itunes_owneremail', 'rss_language', 'pod_tagline', 'pod_itunes_explicit', 'powerpress_podping_authkey', 'network_general', 'powerpress_temp_client');
DELETE FROM wp_options WHERE option_name IN ('powerpress_blubrry_api_redirect_uri', 'powerpress_onboarding');
DELETE FROM wp_options WHERE option_name LIKE 'powerpress_feed_%';
DELETE FROM wp_options WHERE option_name LIKE '%-l';
DELETE FROM wp_options WHERE option_name LIKE 'powerpress_posttype_%';
DELETE FROM wp_options WHERE option_name LIKE 'powerpress_cat_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'powerpress_taxonomy_%';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE 'pod_itunes_cat%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_mod_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_powerpress_guid', 'enclosure', 'pp_default_podcast', 'podPressPostSpecific', 'itunes:duration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_powerpress_guid', 'enclosure', 'pp_default_podcast', 'podPressPostSpecific', 'itunes:duration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_powerpress_guid', 'enclosure', 'pp_default_podcast', 'podPressPostSpecific', 'itunes:duration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_powerpress_guid', 'enclosure', 'pp_default_podcast', 'podPressPostSpecific', 'itunes:duration');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:metamarks';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:metamarks';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:metamarks';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:metamarks';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%:enclosure';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%:enclosure';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%:enclosure';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%:enclosure';

