-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apoyl_chatgpt_db_version', 'apoyl-chatgpt-settings');

