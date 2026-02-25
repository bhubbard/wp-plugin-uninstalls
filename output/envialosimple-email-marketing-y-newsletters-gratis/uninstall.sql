-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('es_config_apikey', 'es_config_lang');
DELETE FROM wp_options WHERE option_name LIKE 'es_config_contactform7_active_%';

