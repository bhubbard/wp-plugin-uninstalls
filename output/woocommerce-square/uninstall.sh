#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_square_connected_page_visited'
wp option delete 'woocommerce_square_refresh_sync_cycle'
wp option delete 'wc_square_refresh_failed'
wp option delete 'woocommerce_gift_cards_pay_settings'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wc_square_is_active'
wp option delete 'wc_square_milestone_messages'
wp option delete 'wc_square_milestone_version'
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_enabled'
wp option delete 'sv_wc_apple_pay_test_mode'
wp option delete 'sv_wc_apple_pay_merchant_id'
wp option delete 'sv_wc_apple_pay_payment_gateway'
wp option delete 'sv_wc_apple_pay_button_style'
wp option delete 'sv_wc_apple_pay_display_locations'
wp option delete 'wc_square_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_square_credit_card_settings'
wp option delete 'woocommerce_square_cash_app_pay_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'wc_square_updated_to_2_0_0'
wp option delete 'woocommerce_square_merchant_access_token'
wp option delete 'wc_square_auth_key_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_inventory'"
wp option delete 'woocommerce_squareconnect_settings'
wp option delete 'woocommerce_square_3_7_1_gift_cards_force_disable_notice'
wp option delete 'wc_square_updated_to_4_7_0'
wp option delete 'wc_square_show_wizard_on_activation'
wp option delete 'woocommerce_wc_square_sync_completed_settings'
wp option delete 'wc_square_access_tokens'
wp option delete 'woocommerce_square_settings'
wp option delete 'wc_square_payment_token_migration_complete'
wp option delete 'wc_square_refresh_tokens'
wp option delete 'wc_square_last_order_polling_time'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'wc_square_options_data'
wp transient delete 'wc_square_access_token_email_sent'
wp transient delete 'wc_square_failed_sync_email_sent'
wp transient delete 'wc_square_check_apple_pay_domain_registration'
wp transient delete 'wc_square_background_sync_process_lock'
wp transient delete 'wc_square_locations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_square_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_square_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_square_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_square_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_plugin_framework_square_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_plugin_framework_square_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_plugin_framework_square_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_plugin_framework_square_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_square_credit_card_payment_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_square_credit_card_payment_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_square_credit_card_payment_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_square_credit_card_payment_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
