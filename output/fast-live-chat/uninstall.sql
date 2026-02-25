-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlc_status', 'mcl_fb_user', 'mlc_float', 'mlc_position');

