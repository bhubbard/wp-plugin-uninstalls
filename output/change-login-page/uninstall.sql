-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clp_background_url', 'clp_logo_url', 'clp_logo_height', 'clp_logo_width', 'clp_primary_color', 'clp_primary_text_color', 'clp_text_color');

