-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msgpt_subdomain_name', 'msgpt_access_token', 'msgpt_client_id', 'msgpt_refresh_token', 'msgpt_date_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_msgpt_product_id', '_msgpt_sale_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_msgpt_product_id', '_msgpt_sale_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_msgpt_product_id', '_msgpt_sale_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_msgpt_product_id', '_msgpt_sale_id');

