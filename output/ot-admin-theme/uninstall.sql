-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ot-header-texts', 'ot-admin-menu-color', 'ot-admin-menu-active-color', 'ot-admin-menu-active-background');

