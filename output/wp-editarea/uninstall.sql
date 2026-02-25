-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_editarea_enable', 'wp_editarea_start_highlight', 'wp_editarea_allow_toggle', 'wp_editarea_word_wrap', 'wp_editarea_language', 'wp_editarea_display');
DELETE FROM wp_options WHERE option_name LIKE 'wp_editarea_%';

