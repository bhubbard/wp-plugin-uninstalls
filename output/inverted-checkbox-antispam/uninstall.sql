-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hqfam_ica_enable_cf7', 'hqfam_ica_enable_custom');

