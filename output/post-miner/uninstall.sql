-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post-miner_recommendations_header', 'post-miner_recommendations_limit', 'post-miner_db_version');

