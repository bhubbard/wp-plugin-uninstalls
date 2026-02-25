-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_url', 'smart_btime', 'smart_etime', 'smart_h', 'smart_d', 'smart_u');

