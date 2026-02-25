-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ipm_nav_menu_show', 'ipm_opt_nav_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('ipm_nav_menu_show', 'ipm_opt_nav_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('ipm_nav_menu_show', 'ipm_opt_nav_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ipm_nav_menu_show', 'ipm_opt_nav_menu');

