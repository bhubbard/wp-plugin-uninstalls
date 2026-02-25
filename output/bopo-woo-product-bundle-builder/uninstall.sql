-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_bopo_bundle_params', 'woocommerce_tax_display_shop', '_bopobb_cart_contents_count', 'woocommerce_tax_round_at_subtotal', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bopobb_title', 'bopobb_shipping_fee', 'bopobb_count', '_wp_attachment_image_alt', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('bopobb_title', 'bopobb_shipping_fee', 'bopobb_count', '_wp_attachment_image_alt', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('bopobb_title', 'bopobb_shipping_fee', 'bopobb_count', '_wp_attachment_image_alt', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bopobb_title', 'bopobb_shipping_fee', 'bopobb_count', '_wp_attachment_image_alt', '_regular_price', '_sale_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bopobb_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bopobb_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bopobb_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bopobb_item_%';

