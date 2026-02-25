-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('albfre_debug', 'albfre_max_date_to_live', 'albfre_date_format', 'albfre_user_token', 'albfre_user_siteId', 'albfre_user_accountId', 'albfre_user_displayName', 'albfre_user_accounts', 'albfre_user_json_accounts', 'albfre_logo_image_id', 'albfre_check_icon_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arena_updated_at', 'arena_updated_by', 'is_arena_blog', 'arena_site', 'arena_blog', 'arena_site_last_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('arena_updated_at', 'arena_updated_by', 'is_arena_blog', 'arena_site', 'arena_blog', 'arena_site_last_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('arena_updated_at', 'arena_updated_by', 'is_arena_blog', 'arena_site', 'arena_blog', 'arena_site_last_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arena_updated_at', 'arena_updated_by', 'is_arena_blog', 'arena_site', 'arena_blog', 'arena_site_last_modified');

