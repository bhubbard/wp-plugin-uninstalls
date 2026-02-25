-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lastfm_username', 'lastfm_lastchecked', 'lastfm_widget_title', 'lastfm_track_data', 'lastfm_widget_count', 'lastfm_widget_length', 'lastfm_widget_dots', 'lastfm_widget_now', 'lastfm_widget_covers', 'lastfm_api_key');

