-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%deferred-admin-notices';
DELETE FROM wp_options WHERE option_name LIKE '%badges';
DELETE FROM wp_options WHERE option_name LIKE '%.update_info';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('promo_priority', 'show_promo', 'show_product_page', 'show_product_cart', 'show_cart_badge', 'promo_from', 'promo_to', 'promo_text', 'promo_image', 'offers_link', 'promo_badge', 'product_page_link', 'show_product_card', 'product_card_actual', 'product_icon', 'badge_text', 'badge_color', 'badge_bgcolor', 'products_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('promo_priority', 'show_promo', 'show_product_page', 'show_product_cart', 'show_cart_badge', 'promo_from', 'promo_to', 'promo_text', 'promo_image', 'offers_link', 'promo_badge', 'product_page_link', 'show_product_card', 'product_card_actual', 'product_icon', 'badge_text', 'badge_color', 'badge_bgcolor', 'products_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('promo_priority', 'show_promo', 'show_product_page', 'show_product_cart', 'show_cart_badge', 'promo_from', 'promo_to', 'promo_text', 'promo_image', 'offers_link', 'promo_badge', 'product_page_link', 'show_product_card', 'product_card_actual', 'product_icon', 'badge_text', 'badge_color', 'badge_bgcolor', 'products_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('promo_priority', 'show_promo', 'show_product_page', 'show_product_cart', 'show_cart_badge', 'promo_from', 'promo_to', 'promo_text', 'promo_image', 'offers_link', 'promo_badge', 'product_page_link', 'show_product_card', 'product_card_actual', 'product_icon', 'badge_text', 'badge_color', 'badge_bgcolor', 'products_in');

