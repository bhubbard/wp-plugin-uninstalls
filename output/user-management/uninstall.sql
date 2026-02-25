-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uiewp_export_field', 'import-export-users ');
DELETE FROM wp_options WHERE option_name LIKE 'export_all_users_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'export_users_by_roles_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'export_specific_users_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'export_roles_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'export_caps_file_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'use_ssl', 'admin_color', 'show_admin_bar_front');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'use_ssl', 'admin_color', 'show_admin_bar_front');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'use_ssl', 'admin_color', 'show_admin_bar_front');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'use_ssl', 'admin_color', 'show_admin_bar_front');

