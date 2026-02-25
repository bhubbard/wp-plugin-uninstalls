-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentgecko_settings', 'contentgecko_api_key', 'woocommerce_currency_pos', 'contentgecko_recent_logs');
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_children_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_var_prices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contentgecko_imported', '_wp_attached_file', '_wp_attachment_image_alt', '_contentgecko_cluster_id', '_contentgecko_last_payload', '_contentgecko_last_synced');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contentgecko_imported', '_wp_attached_file', '_wp_attachment_image_alt', '_contentgecko_cluster_id', '_contentgecko_last_payload', '_contentgecko_last_synced');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contentgecko_imported', '_wp_attached_file', '_wp_attachment_image_alt', '_contentgecko_cluster_id', '_contentgecko_last_payload', '_contentgecko_last_synced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contentgecko_imported', '_wp_attached_file', '_wp_attachment_image_alt', '_contentgecko_cluster_id', '_contentgecko_last_payload', '_contentgecko_last_synced');

