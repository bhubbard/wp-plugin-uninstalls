-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conductor_qr_generator_logo_url', 'conductor_qr_generator_footer_text');

