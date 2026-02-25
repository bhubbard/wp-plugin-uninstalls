-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tags2bb_footer', 'tags2bb_new_window', 'tags2bb_label');

