-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsa-cachepurge_wsa-installed', 'wsa-cachepurge_auto-purge');

