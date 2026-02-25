-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qqworld-share-mode', 'qqworld-share-settings', 'qqworld-share-theme', 'qqworld-share-posttypes');

