-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ourprofiles_links', 'ourprofiles_options', 'ourprofiles_services');

