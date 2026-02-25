-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_page_id', 'woocommerce_shop_page_id', 'woo_thank_you_page_params', 'woocommerce_currency', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'woocommerce_currency_pos', 'villatheme_hide_admin_toolbar', 'woocommerce_thank_you_page_customizer_items_removed_notice', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_thank_you_page_customizer_send_email_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wtypc_unique_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wtypc_unique_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wtypc_unique_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'wtypc_unique_coupon');

