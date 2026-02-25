-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbb_options', 'bbb_badbots', 'blackhole-bad-bots-dismiss-notice');

