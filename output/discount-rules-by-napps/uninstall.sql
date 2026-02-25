-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('napps_discountrules_installed', 'napps_discountrules_version');

