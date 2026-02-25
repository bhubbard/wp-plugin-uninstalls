-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwtt_username', 'lwtt_password', 'enable_lwtt', 'lwtt_username_sina', 'lwtt_password_sina', 'lwtt_sina', 'lwtt_time', 'lwtt_update_prefix', 'lwtt_new_prefix', 'lwtt_api', 'lwtt_tags', 'lwtt_proxy', 'lwtt_custom_proxy');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lwtt_value', '_lwtt_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lwtt_value', '_lwtt_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lwtt_value', '_lwtt_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lwtt_value', '_lwtt_text');

