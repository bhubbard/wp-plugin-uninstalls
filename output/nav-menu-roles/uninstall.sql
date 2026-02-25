-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nav_menu_roles_db_version', 'nav_menu_roles_conflicts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nav_menu_role', '_nav_menu_role_display_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nav_menu_role', '_nav_menu_role_display_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nav_menu_role', '_nav_menu_role_display_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nav_menu_role', '_nav_menu_role_display_mode');

