-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('import_qiita2wp_settings', 'import_qiita2wp_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('import_qiita2wp_url', 'qiita2wp_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('import_qiita2wp_url', 'qiita2wp_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('import_qiita2wp_url', 'qiita2wp_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('import_qiita2wp_url', 'qiita2wp_url');

