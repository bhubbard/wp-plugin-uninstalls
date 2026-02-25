-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cryptocurrency-product-for-woocommerce_options', 'woocommerce_checkout_address_2_field', 'woocommerce_enable_physical', 'woocommerce_tax_display_shop', 'woocommerce_tax_total_display', 'woocommerce_tax_display_cart', 'woocommerce_tax_round_at_subtotal', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_ethereum_wallet_address', '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type', '_virtual', '_select_cryptocurrency_option', '_text_input_cryptocurrency_minimum_value', '_text_input_cryptocurrency_step');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_ethereum_wallet_address', '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type', '_virtual', '_select_cryptocurrency_option', '_text_input_cryptocurrency_minimum_value', '_text_input_cryptocurrency_step');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_ethereum_wallet_address', '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type', '_virtual', '_select_cryptocurrency_option', '_text_input_cryptocurrency_minimum_value', '_text_input_cryptocurrency_step');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_ethereum_wallet_address', '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type', '_virtual', '_select_cryptocurrency_option', '_text_input_cryptocurrency_minimum_value', '_text_input_cryptocurrency_step');

