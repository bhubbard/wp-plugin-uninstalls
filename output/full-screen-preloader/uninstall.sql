-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fspl_bg_color', 'fspl_style', 'fspl_image');

