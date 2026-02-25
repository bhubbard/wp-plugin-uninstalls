-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bverse_bible_ref_services', 'bverse_bible_version', 'bverse_open_new_window', 'bverse_popover', 'bverse_bibles_max_depth', 'bverse_credits', 'bverse_biblia_social');

