-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aga_language', 'aga_print_settings', 'aga_ads_id', 'aga_ads_chanel', 'ai_space');

