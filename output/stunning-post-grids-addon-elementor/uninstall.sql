-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spga_el_installed_at', 'spga_el_version', 'spga_el_license');

