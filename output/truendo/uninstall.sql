-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('truendo_enabled', 'truendo_site_id', 'truendo_language', 'tru_stat_truendo_header_scripts_json', 'tru_mark_truendo_header_scripts_json', 'truendo_google_consent_enabled', 'truendo_google_consent_default_states', 'truendo_google_consent_wait_time', 'truendo_wp_consent_enabled', 'truendo_wp_consent_default_states', 'truendo_trusettings_nofont', 'truendo_trusettings_transparency', 'truendo_trusettings_accessibility', 'truendo_trusettings_accessibility_border_color', 'truendo_trusettings_lang', 'truendo_trusettings_popup_delay', 'truendo_trusettings_autoblocking_disabled');

