-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_custom_author_url_global_options', 'wp_custom_author_url_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('use_custom_author_url', 'custom_author_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('use_custom_author_url', 'custom_author_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('use_custom_author_url', 'custom_author_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('use_custom_author_url', 'custom_author_url');

