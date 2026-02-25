-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jptb_label', 'jptb_bg_colour', 'jptb_text_colour', 'jptb_label_bg_colour', 'jptb_label_text_colour', 'jptb_mod_switch');

