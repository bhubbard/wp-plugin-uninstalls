-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('badad_testlive', 'badad_live_pub', 'badad_live_sec', 'badad_test_pub', 'badad_test_sec', 'badad_call_key', 'badad_siteslug', 'badad_access');

