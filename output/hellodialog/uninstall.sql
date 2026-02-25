-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_hook', 'api_key', 'wc_label', 'show_labels', 'optin_type', 'success_string', 'double_string');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom-meta-box2', '_custom-meta-box', 'news_check');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom-meta-box2', '_custom-meta-box', 'news_check');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom-meta-box2', '_custom-meta-box', 'news_check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom-meta-box2', '_custom-meta-box', 'news_check');

