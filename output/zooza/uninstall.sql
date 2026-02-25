-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zooza_api_key', 'zooza_client_secret', 'zooza_api_url', 'zooza_registration_page_id', 'zooza_profile_page_id', 'zooza_calendar_page_id', 'zooza_video_page_id', 'zooza_checkout_page_id', 'zooza_map_page_id', 'zooza_calendar_map_id');

