-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_search_bar_db_version', 'OASB_flash_notices', 'chatgpt-key');

