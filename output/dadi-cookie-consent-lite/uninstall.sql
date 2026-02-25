-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dadicc_options', 'dadicc_options_admin', 'dadicc_scripts_kept');

