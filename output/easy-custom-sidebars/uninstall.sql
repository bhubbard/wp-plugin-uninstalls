-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecs_version', 'ecs_force_user_redirect', 'ecs_show_admin_pointer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sidebar_description', 'sidebar_replacement_id', 'sidebar_attachments', 'sidebar_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sidebar_description', 'sidebar_replacement_id', 'sidebar_attachments', 'sidebar_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sidebar_description', 'sidebar_replacement_id', 'sidebar_attachments', 'sidebar_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sidebar_description', 'sidebar_replacement_id', 'sidebar_attachments', 'sidebar_id');

