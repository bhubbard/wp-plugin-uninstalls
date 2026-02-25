-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbg_sidebars', 'wpcs_imported_sbg_sidebars');

