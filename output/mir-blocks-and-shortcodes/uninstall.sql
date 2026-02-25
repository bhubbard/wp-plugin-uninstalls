-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mir_shortcodes', 'mir_shortcodes_cpt', 'mir_shortcodes_tax');

