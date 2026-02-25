-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aperture_registration_error', 'aperture_registration_success', 'aperture_temporary_code', 'aperture_microsub_url');

