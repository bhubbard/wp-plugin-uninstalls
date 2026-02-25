-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authors_list_items', 'authors_list_data');
DELETE FROM wp_options WHERE option_name LIKE 'authors_list_item_draft_%';
DELETE FROM wp_options WHERE option_name LIKE 'authors_list_item_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('facebook', 'instagram', 'linkedin', 'pinterest', 'tumblr', 'twitter', 'youtube', 'tiktok');
DELETE FROM wp_usermeta WHERE meta_key IN ('facebook', 'instagram', 'linkedin', 'pinterest', 'tumblr', 'twitter', 'youtube', 'tiktok');
DELETE FROM wp_termmeta WHERE meta_key IN ('facebook', 'instagram', 'linkedin', 'pinterest', 'tumblr', 'twitter', 'youtube', 'tiktok');
DELETE FROM wp_commentmeta WHERE meta_key IN ('facebook', 'instagram', 'linkedin', 'pinterest', 'tumblr', 'twitter', 'youtube', 'tiktok');

