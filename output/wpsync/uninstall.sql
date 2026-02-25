-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsync_spreadsheet_key', 'wpsync_spreadsheet_sheet', 'wpsync_allow_delete_from_spreadsheet', 'wpsync_allow_update_from_spreadsheet', 'wpsync_allow_update_fields', 'wpsync_debug_mode', 'wpsync_default_tags', 'wpsync_default_post_type', 'wpsync_default_status', 'wpsync_create_categories_if_not_exist', 'wpsync_create_tags_if_not_exist', 'wpsync_default_category');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsync_external_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsync_external_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsync_external_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsync_external_id');

