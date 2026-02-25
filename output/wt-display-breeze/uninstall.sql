-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_breeze_subdomain', 'wt_breeze_id', 'wt_breeze_days', 'wt_livebar_activated', 'wt_breeze_date_time', 'wt_breeze_date_day', 'wt_breeze_date_hour', 'wt_breeze_duration', 'wt_breeze_layout', 'wt_breeze_dismissable', 'wt_breeze_message', 'wt_breeze_url', 'wt_head_background_color', 'wt_head_button_color', 'wt_breeze_button_text', 'wt_head_text_color', 'wt_head_button_text_color', 'wt_breeze_campaign_trans', 'wt_breeze_contrib_trans', 'wt_breeze_calendars_trans', 'wt_breeze_events_trans');

