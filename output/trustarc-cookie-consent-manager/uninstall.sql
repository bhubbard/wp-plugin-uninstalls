-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustarc_version', 'trustarc_script', 'trustarc_script_params', 'trustarc_banner', 'trustarc_preferences_selector', 'trustarc_preferences', 'trustarc_standard_event_listener', 'trustarc_google_consent_mode', 'trustarc_implied_location', 'trustarc_consent_config', 'trustarc_wp_consent_api', 'trustarc_wp_consent_api_mapping', 'trustarc_ga_measurement_id', 'trustarc_google_consent_fields', 'trustarc_ads_data_redaction', 'trustarc_url_passthrough');

