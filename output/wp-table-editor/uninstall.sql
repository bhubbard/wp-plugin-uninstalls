-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xs_custom_css', 'wptableeditor_license', 'wptableeditor_version_installed', 'wptableeditor_tracking');

