-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosw_settings', 'woosw_localization', 'woosw_page_id', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woosw_%';
DELETE FROM wp_options WHERE option_name LIKE 'woosw_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woosw_keys', 'woosw_key', 'woosw_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('woosw_keys', 'woosw_key', 'woosw_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('woosw_keys', 'woosw_key', 'woosw_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woosw_keys', 'woosw_key', 'woosw_count');

