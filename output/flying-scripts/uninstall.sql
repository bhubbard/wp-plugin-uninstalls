-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flying_scripts_disabled_pages', 'flying_scripts_include_list', 'FLYING_SCRIPTS_VERSION', 'flying_scripts_timeout');

