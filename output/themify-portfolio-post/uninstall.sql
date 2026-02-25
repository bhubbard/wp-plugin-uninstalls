-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__portfolio_slug', 'themify_saved_colors', 'themify_saved_gradients');
DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themify_gallery_featured', '_wp_attachment_backup_sizes', 'popup_show', 'project_date', 'project_client', 'project_services', 'project_launch');
DELETE FROM wp_usermeta WHERE meta_key IN ('themify_gallery_featured', '_wp_attachment_backup_sizes', 'popup_show', 'project_date', 'project_client', 'project_services', 'project_launch');
DELETE FROM wp_termmeta WHERE meta_key IN ('themify_gallery_featured', '_wp_attachment_backup_sizes', 'popup_show', 'project_date', 'project_client', 'project_services', 'project_launch');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themify_gallery_featured', '_wp_attachment_backup_sizes', 'popup_show', 'project_date', 'project_client', 'project_services', 'project_launch');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id';

