-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('news_manager_general', 'news_manager_permalinks', 'news_manager_capabilities', 'news_manager_version', 'news_manager_activated_blogs');

