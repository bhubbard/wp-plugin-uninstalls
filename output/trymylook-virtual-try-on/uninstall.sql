-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trymylook_api_key', 'trymylook_button_text', 'trymylook_generate_button_text', 'trymylook_enable_download');

