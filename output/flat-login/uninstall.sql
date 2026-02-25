-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flat_logo_upload', 'flat_logo_url', 'flat_logo_title', 'flat_bg_color', 'flat_custom_style', 'flat_logo_width', 'flat_logo_height');

