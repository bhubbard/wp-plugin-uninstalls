-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpes_consumer_key', 'wpes_consumer_secret', 'wpes_dissearched', 'wpes_count');

