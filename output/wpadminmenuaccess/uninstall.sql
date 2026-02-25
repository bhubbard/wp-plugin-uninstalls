-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allowed_menus', 'allowed_menus_roles', 'allowed_menus_users');

