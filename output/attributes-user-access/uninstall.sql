-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('attrua_pages_options', 'attrua_redirect_options', 'attrua_version', 'attrua_schema_version', 'attrua_options', 'attrua_pro_user_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_attrua_page_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_attrua_page_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_attrua_page_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_attrua_page_type');

