-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leaderboarded_use_caching', 'leaderboarded_use_unsigned');

