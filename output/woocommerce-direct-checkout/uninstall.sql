-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'woocommerce_cart_redirect_after_add', 'qlwcdc_add_to_cart', 'qlwcdc_add_to_cart_redirect_page', 'qlwcdc_wcd_imported2', 'direct_checkout_pro_enabled', 'direct_checkout_enabled', 'direct_checkout_pro_cart_redirect_url', 'direct_checkout_cart_redirect_url', 'qlwcdc_add_to_cart_redirect_url', 'direct_checkout_cart_button_text', 'qlwcdc_add_product_text', 'qlwcdc_add_product_text_content', 'qlwcdc_add_archive_text', 'qlwcdc_add_archive_text_content', 'qlwcdc_add_archive_text_in', 'qlwcdc_wcd_imported', 'qlwcdc_add_product_quick_purchase_class', 'qlwcdc_add_product_quick_purchase_text', 'qlwcdc_remove_checkout_privacy_policy_text', 'qlwcdc_remove_checkout_terms_and_conditions', 'qlwcdc_remove_checkout_fields', 'qlwcdc_remove_checkout_order_comments', 'qlwcdc_remove_checkout_shipping_address', 'qlwcdc_add_to_cart_link', 'qlwcdc_add_to_cart_message', 'qlwcdc_replace_cart_url', 'qlwcdc_replace_cart_url_custom', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_direct_checkout_pro_cart_button_text', 'qlwcdc_add_product_text', 'qlwcdc_add_product_text_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_direct_checkout_pro_cart_button_text', 'qlwcdc_add_product_text', 'qlwcdc_add_product_text_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_direct_checkout_pro_cart_button_text', 'qlwcdc_add_product_text', 'qlwcdc_add_product_text_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_direct_checkout_pro_cart_button_text', 'qlwcdc_add_product_text', 'qlwcdc_add_product_text_content');

