-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zbbs_block_stats', 'zbbs_404_limit', 'zbbs_404_window', 'zbbs_blocked_countries');

