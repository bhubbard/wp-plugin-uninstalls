-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfw_debug', 'gfw_errors', 'gfw_info', 'gfw_running', 'gfw_template', 'gfw_remove_hashtags', 'gfw_post_status', 'gfw_post_categories', 'gfw_post_tags', 'gfw_import_trashed', 'gfw_featured_images', 'gfw_overwrite', 'gfw_imported_comments', 'gfw_comments', 'gfw_api_key', 'gfw_profiles', 'gfw_history', 'gfw_max_resolution', 'gfw_ignore_tags', 'gfw_import_tags', 'gfw_ignore_canonical', 'gfw_imported_new', 'gfw_imported_updated', 'gfw_imported_ignored', 'gfw_schedule');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gfw_id', '_gfw_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gfw_id', '_gfw_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gfw_id', '_gfw_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gfw_id', '_gfw_url');

