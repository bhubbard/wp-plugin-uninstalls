-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ijmtb_bg_colour', 'ijmtb_text_colour', 'ijmtb_label');

