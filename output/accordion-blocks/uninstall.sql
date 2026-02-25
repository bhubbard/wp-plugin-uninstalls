-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accordion_blocks_defaults', 'accordion_blocks_load_scripts_globally', 'accordion_blocks_load_scripts_globablly');

