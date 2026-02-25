-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_logo_url', 'wp_logo_height', 'wp_logo_width');

