-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relevanssi_min_word_length', 'relevanssi_live_search_last_update', 'relevanssi_live_search_version');

