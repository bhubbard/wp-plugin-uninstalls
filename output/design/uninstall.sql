-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsgn_css', 'dsgn_design_library', 'dsgn_license');

