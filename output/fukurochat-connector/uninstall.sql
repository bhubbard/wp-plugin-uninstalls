-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fukurochat_assistant_uuid', 'fukurochat_bubble_text', 'fukurochat_target_id', 'fukurochat_position', 'fukurochat_offset_horizontal', 'fukurochat_offset_vertical', 'fukurochat_sync_enabled', 'fukurochat_api_secret', 'fukurochat_credentials_valid', 'fukurochat_assistant_name', 'fukurochat_last_sync_result');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fukurochat_is_new', '_fukurochat_synced', '_fukurochat_alternative_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fukurochat_is_new', '_fukurochat_synced', '_fukurochat_alternative_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fukurochat_is_new', '_fukurochat_synced', '_fukurochat_alternative_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fukurochat_is_new', '_fukurochat_synced', '_fukurochat_alternative_products');

