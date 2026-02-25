-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artfprpo_logo_attachment_id', 'artfprpo_delete_on_uninstall', 'artfprpo_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_show_header', '_show_series', '_show_material', '_show_features', '_api_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_show_header', '_show_series', '_show_material', '_show_features', '_api_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_show_header', '_show_series', '_show_material', '_show_features', '_api_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_show_header', '_show_series', '_show_material', '_show_features', '_api_url');

