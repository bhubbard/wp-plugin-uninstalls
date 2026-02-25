-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vr_wp_notices_dompdf', 'vr_wp_notices_directory', 'vr_wp_notices_directory_url');

