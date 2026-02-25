-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('argonz_groq_api_key', 'argonz_aiml_api_key', 'argonz_api_service', 'argonz_api_models');

