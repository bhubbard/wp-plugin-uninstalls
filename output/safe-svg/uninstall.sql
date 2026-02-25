-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safe_svg_upload_roles', 'safe_svg_large_svg');

