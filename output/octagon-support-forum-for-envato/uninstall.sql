-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfe_purchase_form_page_id', 'sfe_whitelist', 'sfe_envato_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfe_user_item', 'sfe_item_verify_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfe_user_item', 'sfe_item_verify_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfe_user_item', 'sfe_item_verify_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfe_user_item', 'sfe_item_verify_id');

