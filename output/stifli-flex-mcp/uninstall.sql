-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sflmcp_logging_enabled', 'woocommerce_db_version', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'stifli_flex_mcp_token', 'stifli_flex_mcp_token_user');
DELETE FROM wp_options WHERE option_name LIKE '%_advanced';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'rating');

