-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pptec_data', 'pptec_job_events_fetching', 'pptec_stats_update_time', 'classic-editor-replace', 'classic-editor-allow-users', 'pptec_widget_settings', 'pptec_random_str', 'pptec_oauth_decrypted_client_id', 'pptec_oauth_settings', 'pptec_oauth_refresh_token', 'pptec_events_last_requested_date', 'pptec_wizard', 'Activated_Plugin', 'doing_cron');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pptec_pp_user_id', 'current_post_row_counter_price', '_EventStartDate', 'pptec_event_meta_data', 'classic-editor-remember', 'pp_enabled_ticket_sales', '_VenueOrigin', '_VenueAddress', '_VenueCity', '_VenueCountry', '_VenueState', '_VenueProvince', '_VenueStateProvince', '_VenueZip', '_EventVenueID', '_EventEndDate', 'pp_events_types');
DELETE FROM wp_usermeta WHERE meta_key IN ('pptec_pp_user_id', 'current_post_row_counter_price', '_EventStartDate', 'pptec_event_meta_data', 'classic-editor-remember', 'pp_enabled_ticket_sales', '_VenueOrigin', '_VenueAddress', '_VenueCity', '_VenueCountry', '_VenueState', '_VenueProvince', '_VenueStateProvince', '_VenueZip', '_EventVenueID', '_EventEndDate', 'pp_events_types');
DELETE FROM wp_termmeta WHERE meta_key IN ('pptec_pp_user_id', 'current_post_row_counter_price', '_EventStartDate', 'pptec_event_meta_data', 'classic-editor-remember', 'pp_enabled_ticket_sales', '_VenueOrigin', '_VenueAddress', '_VenueCity', '_VenueCountry', '_VenueState', '_VenueProvince', '_VenueStateProvince', '_VenueZip', '_EventVenueID', '_EventEndDate', 'pp_events_types');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pptec_pp_user_id', 'current_post_row_counter_price', '_EventStartDate', 'pptec_event_meta_data', 'classic-editor-remember', 'pp_enabled_ticket_sales', '_VenueOrigin', '_VenueAddress', '_VenueCity', '_VenueCountry', '_VenueState', '_VenueProvince', '_VenueStateProvince', '_VenueZip', '_EventVenueID', '_EventEndDate', 'pp_events_types');

