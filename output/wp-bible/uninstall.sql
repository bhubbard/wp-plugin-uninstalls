-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_bible_default_width', 'wp_bible_slim', 'wp_bible_inline', 'wp_bible_new_window', 'wp_bible_default_version');

