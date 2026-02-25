-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('backdataassup_tables', 'backdataassup_compression', 'backdataassup_lastrun', 'backdataassup_saveOptions');

