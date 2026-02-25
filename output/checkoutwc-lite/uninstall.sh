#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'cfw_license_data'
wp option delete 'cfw_db_version'
wp option delete 'amazon_api_version'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'coderockz_woo_delivery_other_settings'
wp option delete 'klaviyo_settings'
wp option delete 'ownid-account-auth-button'
wp option delete 'ownid_widget_position'
wp option delete 'ownid_infoTooltip_Position'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'mwb_wpr_cart_points_rate'
wp option delete 'mwb_wpr_cart_price_rate'
wp option delete 'mwb_ubo_global_options'
wp option delete '_cfwlite__settings'
wp option delete '_cfw_updated_lite_to_pro'
wp option delete 'cfw_previous_updates'
wp option delete 'cfw_v80_data_migrated'
wp option delete '_cfw__settings'
wp option delete 'cfw_ob_data_ported_v9_keys'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'cfw_license_activation_limit'
wp option delete 'cfw_license_price_id'
wp option delete 'cfw_license_cache'
wp option delete 'cfw_license_cache_time'
wp option delete 'cfw_license_check_failures'
wp option delete 'cfw_license_last_failure'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_registration_generate_username'
wp option delete '_cfw_allow_uninstall'
wp option delete 'cfw_license'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'cfw_turnstile_feature_notice'
wp transient delete 'cfw_auto_activated'
wp transient delete 'cfw_google_font_list'
wp transient delete '_cfw_welcome_screen_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rocket_get_refreshed_fragments_cache_%' OR option_name LIKE '_site_transient_rocket_get_refreshed_fragments_cache_%'"
wp transient delete 'rocket_get_refreshed_fragments_cache'
wp transient delete '_cfw_90_upgrade_welcome_redirect'
wp transient delete '_cfw_100_upgrade_welcome_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cfw_suggested_products_%' OR option_name LIKE '_site_transient_cfw_suggested_products_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_pl_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_pl_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_pl_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_pl_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_pl_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_pl_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_pl_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_pl_instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_pl_estimated_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_pl_estimated_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_pl_estimated_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_pl_estimated_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klarna_payments_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klarna_payments_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klarna_payments_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klarna_payments_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_wpr_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_wpr_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_wpr_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_wpr_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'captured_revenue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'captured_revenue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'captured_revenue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'captured_revenue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_data_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_data_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_data_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_data_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_exclude_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_exclude_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_exclude_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_exclude_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_products_to_remove'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_products_to_remove'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_products_to_remove'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_products_to_remove'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_exclude_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_exclude_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_exclude_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_exclude_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_offer_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_offer_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_offer_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_offer_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_products_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_products_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_products_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_products_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_categories_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_categories_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_categories_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_categories_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_products_to_remove_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_products_to_remove_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_products_to_remove_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_products_to_remove_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_exclude_products_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_exclude_products_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_exclude_products_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_exclude_products_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_exclude_categories_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_exclude_categories_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_exclude_categories_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_exclude_categories_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_offer_product_v9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_offer_product_v9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_offer_product_v9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_offer_product_v9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_display_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_display_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_display_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_display_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_upsell'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_upsell'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_upsell'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_upsell'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_any_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_any_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_any_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_any_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_minimum_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_minimum_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_minimum_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_minimum_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_upsell_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_upsell_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_upsell_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_upsell_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_match_offer_product_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_match_offer_product_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_match_offer_product_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_match_offer_product_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_quantity_match_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_quantity_match_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_quantity_match_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_quantity_match_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_enable_auto_match'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_enable_auto_match'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_enable_auto_match'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_enable_auto_match'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ob_variation_match_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ob_variation_match_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ob_variation_match_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ob_variation_match_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_date_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_date_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_date_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_date_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_date_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_date_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_date_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_date_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_order_bump'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_order_bump'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_order_bump'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_order_bump'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_order_bump_variants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_order_bump_variants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_order_bump_variants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_order_bump_variants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_traffic_split_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_traffic_split_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_traffic_split_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_traffic_split_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfw_ab_test_traffic_split_percentages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfw_ab_test_traffic_split_percentages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfw_ab_test_traffic_split_percentages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfw_ab_test_traffic_split_percentages'"
