-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DSGVOGWP_use_google_web_fonts', 'DSGVOGWP_use_google_web_fonts_status', 'DSGVOGWP_stylesheet');

