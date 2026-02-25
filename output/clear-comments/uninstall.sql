-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clear_comm_keywords', 'clear_comm_keywords_white', 'clear_comm_test');

