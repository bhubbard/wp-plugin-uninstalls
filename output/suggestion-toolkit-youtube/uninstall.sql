-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suggestion_toolkit_youtube_api_key', 'suggestion_toolkit_youtube_my', 'suggestion_toolkit_youtube_event_type');

