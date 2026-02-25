-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clpt_logo', 'clpt_bg_image', 'clpt_template', 'clpt_potd', 'clp_potd_url');

