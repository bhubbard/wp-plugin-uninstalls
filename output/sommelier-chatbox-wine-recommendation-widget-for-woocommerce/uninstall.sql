-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcsomm_sommelier_theme', 'wcsomm_chat_enabled');

