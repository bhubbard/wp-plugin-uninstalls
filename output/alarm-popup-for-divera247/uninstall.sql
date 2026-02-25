-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esap_popup_color_text', 'esap_popup_color_bg', 'esap_popup_color_border', 'esap_popup_alarm_keywords', 'esap_popup_unit_ids', 'esap_popup_list_count', 'esap_popup_settings_json_mapping', 'esap_popup_settings_api_key', 'esap_popup_events_time_last_api_call', 'esap_popup_events_cache', 'esap_popup_alarm_time_last_api_call', 'esap_popup_alarm_cache');

