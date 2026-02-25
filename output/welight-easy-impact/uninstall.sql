-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('welight_activated', 'welight_sandbox', 'welight_api_key', 'welight_api_username', 'welight_store_name', 'welight_donation_tax', 'welight_style_display_ong', 'welight_text_checkout', 'welight_text_cart');
DELETE FROM wp_options WHERE option_name LIKE 'welight_changed_order_status:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_id', 'cart_content', 'cart_totals', 'customer');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_id', 'cart_content', 'cart_totals', 'customer');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_id', 'cart_content', 'cart_totals', 'customer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_id', 'cart_content', 'cart_totals', 'customer');

