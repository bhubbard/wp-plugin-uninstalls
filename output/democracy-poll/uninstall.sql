-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('democracy_version', 'democracy_css', 'democracy_migrated', 'poll_allowtovote', 'democracy_l10n');

