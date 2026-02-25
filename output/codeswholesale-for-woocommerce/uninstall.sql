-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cw_options', 'codeswholesale_params', '_codeswholesale_auto_complete', '_codeswholesale_notify_balance_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('codeswholesale_email_heading', 'codeswholesale_email_subject', '_codeswholesale_email_id', '_stock', 'wp_user_level', '_regular_price', '_price', '_stock_status', '_product_attributes', '_virtual', '_manage_stock', '_sku', '_backorders', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('codeswholesale_email_heading', 'codeswholesale_email_subject', '_codeswholesale_email_id', '_stock', 'wp_user_level', '_regular_price', '_price', '_stock_status', '_product_attributes', '_virtual', '_manage_stock', '_sku', '_backorders', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('codeswholesale_email_heading', 'codeswholesale_email_subject', '_codeswholesale_email_id', '_stock', 'wp_user_level', '_regular_price', '_price', '_stock_status', '_product_attributes', '_virtual', '_manage_stock', '_sku', '_backorders', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('codeswholesale_email_heading', 'codeswholesale_email_subject', '_codeswholesale_email_id', '_stock', 'wp_user_level', '_regular_price', '_price', '_stock_status', '_product_attributes', '_virtual', '_manage_stock', '_sku', '_backorders', '_product_image_gallery');

