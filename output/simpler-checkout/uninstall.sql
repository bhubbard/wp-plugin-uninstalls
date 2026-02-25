-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpler_auto_render_product_button', 'simplerwc_product_button_placement', 'simpler_auto_render_cart_button', 'simplerwc_cart_page_button_placement', 'simplerwc_auto_render_checkout_page_button', 'simplerwc_checkout_page_button_placement', 'simplerwc_auto_render_minicart_button', 'simplerwc_minicart_button_placement', 'simplerwc_show_cards_notice', 'simplerwc_excluded_user_roles', 'simpler_environment', 'simpler_api_key', 'simpler_api_secret', 'simpler_checkout_test_mode', 'simplerwc_support_woo_order_attribution', 'simplerwc_disable_force_login', 'simplerwc_should_render_sale_ribbon', 'simplerwc_sale_ribbon_text', 'simplerwc_takeover_enable', 'simplerwc_takeover_test_mode', 'simplerwc_takeover_redirect_only', 'tgpc_gift_wrapper_enabled', 'tgpc_gift_wrapper_cost', 'tgpc_gift_wrapper_cost_tax_status', 'tgpc_gift_wrapper_tax_class', 'woocommerce_tax_based_on', 'simpler_product_button_custom_style', 'simpler_mini_cart_button_custom_style', 'simpler_cart_page_button_custom_style', 'simpler_checkout_page_button_custom_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woobt_ids', 'bundle_sells');
DELETE FROM wp_usermeta WHERE meta_key IN ('woobt_ids', 'bundle_sells');
DELETE FROM wp_termmeta WHERE meta_key IN ('woobt_ids', 'bundle_sells');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woobt_ids', 'bundle_sells');

