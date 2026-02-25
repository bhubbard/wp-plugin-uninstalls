-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsal_allowed_cpt', 'wpsal_filter_menus_nav_blocks', 'wpsal_default_redirect_page_id', 'wpsal_always_allow_admins', 'wpsal_show_admin_column');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsal_users', '_wpsal_roles', '_wpsal_redirect', '_wpsal_has_permissions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsal_users', '_wpsal_roles', '_wpsal_redirect', '_wpsal_has_permissions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsal_users', '_wpsal_roles', '_wpsal_redirect', '_wpsal_has_permissions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsal_users', '_wpsal_roles', '_wpsal_redirect', '_wpsal_has_permissions');

