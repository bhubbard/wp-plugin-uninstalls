-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_search_version', 'admin_search_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hide_in_admin_search');
DELETE FROM wp_usermeta WHERE meta_key IN ('hide_in_admin_search');
DELETE FROM wp_termmeta WHERE meta_key IN ('hide_in_admin_search');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hide_in_admin_search');

