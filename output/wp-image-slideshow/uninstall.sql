-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpis_title', 'wpis_width', 'wpis_height', 'wpis_pause', 'wpis_random', 'wpis_type', 'wpis_Title');

