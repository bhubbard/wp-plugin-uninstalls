-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webhookx_admin_menu', 'webhookx_admin_column_upload_default', 'webhookx_admin_column_edit-comments_default', 'webhookx_admin_column_users_default', 'webhookx_admin_menu_editor', 'webhookx_addons');
DELETE FROM wp_options WHERE option_name LIKE '%_default';
DELETE FROM wp_options WHERE option_name LIKE 'webhookx_admin_menu_role_%';
DELETE FROM wp_options WHERE option_name LIKE 'webhookx_admin_column_%';
DELETE FROM wp_options WHERE option_name LIKE 'webhookx_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webhookx_admin_menu', '_webhookx_who_can_see', '_webhookx_who_can_see_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webhookx_admin_menu', '_webhookx_who_can_see', '_webhookx_who_can_see_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webhookx_admin_menu', '_webhookx_who_can_see', '_webhookx_who_can_see_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webhookx_admin_menu', '_webhookx_who_can_see', '_webhookx_who_can_see_roles');

