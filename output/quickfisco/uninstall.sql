-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickfisco_api_token', 'quickfisco_codice_ateco', 'quickfisco_plugin_disabled', 'quickfisco_version', 'quickfisco_activation_date');

