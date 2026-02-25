-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h_message', 'txt_align', 'color', 'bg_color', 'font_size', 'padding');

