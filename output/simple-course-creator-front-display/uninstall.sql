-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sccfd_background', 'sccfd_border_color', 'sccfd_text_color');

