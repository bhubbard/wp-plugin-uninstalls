-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pressidium_cookie_consent_activated', 'pressidium_cookie_consent_settings', 'pressidium_cookie_consent_table_versions', 'pressidium_cookie_consent_ai_api_key');

