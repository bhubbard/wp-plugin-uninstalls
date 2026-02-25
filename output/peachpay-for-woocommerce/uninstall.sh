#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoptimize_js_exclude'
wp option delete 'autoptimize_minify_excluded'
wp option delete 'peachpay_express_checkout_button'
wp option delete 'peachpay_express_checkout_branding'
wp option delete 'wpcbr_force_geo_location'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wp_rocket_settings'
wp option delete 'peachpay_valid_key'
wp option delete 'peachpay_api_access_denied'
wp option delete 'peachpay_payment_options'
wp option delete 'peachpay_data_retention'
wp option delete 'peachpay_button_options'
wp option delete 'peachpay_general_options'
wp option delete 'peachpay_field_editor_additional'
wp option delete 'peachpay_field_editor_billing'
wp option delete 'peachpay_field_editor_shipping'
wp option delete 'peachpay_related_products_options'
wp option delete 'peachpay_currency_options'
wp option delete 'peachpay_one_click_upsell_options'
wp option delete 'peachpay_advanced_options'
wp option delete 'peachpay_product_links'
wp option delete 'peachpay_service_fee_notice_dismissed'
wp option delete 'peachpay_tos_notice_dismissed'
wp option delete 'peachpay_express_checkout_window'
wp option delete 'peachpay_express_checkout_product_recommendations'
wp option delete 'peachpay_express_checkout_advanced'
wp option delete 'peachpay_premium_trial_notice_shown'
wp option delete 'peachpay_answered_usage_tracking'
wp option delete 'peachpay_track_usage'
wp option delete 'peachpay_attempt_applepay'
wp option delete 'woocommerce_currency'
wp option delete 'peachpay_plugin_capabilities'
wp option delete 'peachpay_merchant_id'
wp option delete 'peachpay_db_last_checked'
wp option delete 'peachpay_deactivation_feedback'
wp option delete 'peachpay_old_version'
wp option delete 'peachpay_dismiss_third_party_field_notice'
wp option delete 'peachpay_apple_pay_settings'
wp option delete 'peachpay_service_fee_percentage'
wp option delete 'peachpay_service_fee_enabled'
wp option delete 'peachpay_affiliate_id'
wp option delete 'peachpay_migrate_button_defaults_completed'
wp option delete 'peachpay_migrated_float_button_icon'
wp option delete 'peachpay_data_retention_migration'
wp option delete 'peachpay_account_data_admin_settings'
wp option delete 'peachpay_migrated_pp_only_checkout_option'
wp option delete 'peachpay_migrated_product_image_option'
wp option delete 'peachpay_migrated_quantity_changer_option'
wp option delete 'peachpay_migrated_upsell_option'
wp option delete 'peachpay_migrated_cross_sell_option'
wp option delete 'peachpay_migrated_address_autocomplete'
wp option delete 'peachpay_migrated_payment_method_thresholds'
wp option delete 'peachpay_paypal_gateway_migration'
wp option delete 'peachpay_peachpay_paypal_wallet_settings'
wp option delete 'peachpay_migrated_related_slider_option'
wp option delete 'peachpay_flip_upsell_option'
wp option delete 'peachpay_flip_cross_sell_option'
wp option delete 'peachpay_migrated_linked_products_option'
wp option delete 'peachpay_migrated_related_products_option'
wp option delete 'peachpay_migrated_separate_rp_settings'
wp option delete 'peachpay_migrated_settings_after_reorg'
wp option delete 'peachpay_square_gateway_migration'
wp option delete 'peachpay_peachpay_square_card_settings'
wp option delete 'peachpay_peachpay_applepay_card_settings'
wp option delete 'peachpay_peachpay_square_googlepay_settings'
wp option delete 'peachpay_stripe_gateway_migration'
wp option delete 'peachpay_peachpay_stripe_card_settings'
wp option delete 'peachpay_peachpay_stripe_achdebit_settings'
wp option delete 'peachpay_peachpay_stripe_affirm_settings'
wp option delete 'peachpay_peachpay_stripe_afterpay_settings'
wp option delete 'peachpay_peachpay_stripe_applepay_settings'
wp option delete 'peachpay_peachpay_stripe_googlepay_settings'
wp option delete 'peachpay_peachpay_stripe_bancontact_settings'
wp option delete 'peachpay_peachpay_stripe_eps_settings'
wp option delete 'peachpay_peachpay_stripe_giropay_settings'
wp option delete 'peachpay_peachpay_stripe_ideal_settings'
wp option delete 'peachpay_peachpay_stripe_klarna_settings'
wp option delete 'peachpay_peachpay_stripe_p24_settings'
wp option delete 'peachpay_peachpay_stripe_sofort_settings'
wp option delete 'peachpay_analytics'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'peachpay_payment_options[paypal_default]'
wp option delete 'breeze_advanced_settings'
wp option delete 'peachpay_field_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'peachpay_field_editor_%'"
wp option delete 'klaviyo_settings'
wp option delete 'inspire_checkout_fields_settings'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_additional'
wp option delete 'wooccm_shipping'
wp option delete 'wooccm_billing'
wp option delete 'wooccm_additional'
wp option delete 'peachpay_landing_page'
wp option delete 'peachpay_related_nproducts'
wp option delete 'peachpay_connected_amazonpay_account'
wp option delete 'peachpay_amazonpay_onboarding_status'
wp option delete 'peachpay_migrated_payment_description_authnet'
wp option delete 'peachpay_connected_authnet_account'
wp option delete 'peachpay_connected_authnet_config'
wp option delete 'peachpay_connected_convesiopay_config'
wp option delete 'peachpay_connected_convesiopay_account'
wp option delete 'peachpay_convesiopay_last_payment_method_sync'
wp option delete 'peachpay_convesiopay_checkout_theme'
wp option delete 'peachpay_convesiopay_unified_gateway_label'
wp option delete 'peachpay_convesiopay_card_icons'
wp option delete 'peachpay_convesiopay_show_card_icons'
wp option delete 'woocommerce_gateway_order'
wp option delete 'woocommerce_peachpay_convesiopay_applepay_settings'
wp option delete 'woocommerce_peachpay_convesiopay_card_settings'
wp option delete 'woocommerce_peachpay_convesiopay_btcpay_settings'
wp option delete 'woocommerce_peachpay_convesiopay_unified_settings'
wp option delete 'peachpay_test_mode'
wp option delete 'peachpay_connected_paypal_config'
wp option delete 'peachpay_connected_paypal_account'
wp option delete 'peachpay_paypal_signup'
wp option delete 'peachpay_migrated_payment_description_paypal'
wp option delete 'peachpay_connected_poynt_account'
wp option delete 'peachpay_connected_poynt_config'
wp option delete 'peachpay_connected_square_config'
wp option delete 'peachpay_connected_square_account'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'peachpay_square_apple_pay_config%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'peachpay_connected_stripe_config'
wp option delete 'peachpay_connected_stripe_account'
wp option delete 'peachpay_apple_pay_settings_v2'
wp option delete 'peachpay_migrated_payment_description_stripe'
wp option delete 'peachpay_stripe_applepay_config'
wp option delete 'peachpay_migrated_to_enable_stripe_checkbox'
wp option delete 'peachpay_set_default_button_settings'
wp option delete 'peachpay_webhook_secret'
wp option delete 'peachpay_api_key'
wp option delete 'wc4jp_peachpay'
wp option delete 'peachpay_premium_capability'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_currency_pos'
wp option delete 'peachpay_advanced_logging'
wp option delete 'peachpay_options'
wp option delete 'alg_wc_currency_switcher_enabled'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'wc_od_delivery_days'
wp option delete 'wc_od_max_delivery_days'
wp option delete 'peachpay_migrated_wc_country_locale'
wp option delete 'peachpay_onboarding_tour'
wp option delete 'peachpay_payment_settings_initialized'
wp option delete 'peachpay_migrate_button_position'
wp option delete 'peachpay_square_apple_pay_config_live'
wp option delete 'peachpay_square_apple_pay_config_test'
wp option delete 'peachpay_deny_add_to_cart_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_convesiopay_btcpay_completed_%' OR option_name LIKE '_site_transient_convesiopay_btcpay_completed_%'"

# Clear Cron Jobs
wp cron event delete 'peachpay_version_change_event'
wp cron event delete 'peachpay_update_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shared_variation_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shared_variation_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shared_variation_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shared_variation_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsvi_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsvi_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsvi_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsvi_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsvi_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsvi_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsvi_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsvi_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsvi_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsvi_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsvi_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsvi_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Purchase Order #'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Purchase Order #'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Purchase Order #'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Purchase Order #'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convesiopay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convesiopay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convesiopay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convesiopay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convesiopay_stored_payment_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convesiopay_stored_payment_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convesiopay_stored_payment_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convesiopay_stored_payment_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convesiopay_payment_method_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convesiopay_payment_method_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convesiopay_payment_method_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convesiopay_payment_method_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peachpay_is_test_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peachpay_is_test_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peachpay_is_test_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peachpay_is_test_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpb_product_boxes_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpb_product_boxes_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpb_product_boxes_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpb_product_boxes_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restricted_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peachpay_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peachpay_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peachpay_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peachpay_notice_dismissed'"
