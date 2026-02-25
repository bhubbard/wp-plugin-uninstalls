-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'nexron_ai_chat_organization_id', 'nexron_ai_chat_uid', 'nexron_ai_chat_product_status');
DELETE FROM wp_options WHERE option_name LIKE 'nexron_ai_chat_original_product_id_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_update_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_update_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_update_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_update_processed');

