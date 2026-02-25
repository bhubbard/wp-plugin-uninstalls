#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wcvendors_version'
wp option delete 'wcvendors_capability_products_enabled'
wp option delete 'wcvendors_capability_products_edit'
wp option delete 'wcvendors_capability_product_duplicate'
wp option delete 'wcvendors_capability_product_types'
wp option delete 'wcvendors_capability_product_data_tabs'
wp option delete 'wcvendors_capability_product_type_options'
wp option delete 'woocommerce_lock_down_admin'
wp option delete 'wcvendors_display_shop_description_html'
wp option delete 'wcvendors_allow_form_markup'
wp option delete 'wcvendors_capability_product_featured'
wp option delete 'wcvendors_capability_product_sku'
wp option delete 'wcvendors_vendor_primary_role'
wp option delete 'wcvendors_display_advanced_stylesheet'
wp option delete 'wcvendors_capability_product_taxes'
wp option delete 'wcvendors_capability_product_delete'
wp option delete 'wcvendors_vendor_commission_rate'
wp option delete 'wcvendors_allow_tracking'
wp option delete 'wcvendors_paypal_web_currency'
wp option delete 'wcvendors_capability_products_live'
wp option delete 'wcvendors_capability_orders_export'
wp option delete 'wcvendors_capability_order_read_notes'
wp option delete 'wcvendors_capability_order_update_notes'
wp option delete 'wcvendors_wizard_complete'
wp option delete 'wcvendors_vendor_terms_page_id'
wp option delete 'wcvendors_vendor_allow_registration'
wp option delete 'wcvendors_vendor_give_taxes'
wp option delete 'wcvendors_vendor_give_shipping'
wp option delete 'wcvendors_vendor_shop_permalink'
wp option delete 'wcvendors_vendor_approve_registration'
wp option delete 'wcvendors_shop_settings_page_id'
wp option delete 'wcvendors_product_orders_page_id'
wp option delete 'wcvendors_hide_settings_payment_paypal_payout'
wp option delete 'wcvendors_hide_settings_payment_paypal'
wp option delete 'wcvendors_hide_settings_payment_paypal_venmo'
wp option delete 'wcvendors_hide_settings_payment_bank_account_name'
wp option delete 'wcvendors_hide_settings_payment_bank_account_number'
wp option delete 'wcvendors_hide_settings_payment_bank_name'
wp option delete 'wcvendors_hide_settings_payment_routing_number'
wp option delete 'wcvendors_hide_settings_payment_iban'
wp option delete 'wcvendors_hide_settings_payment_bic_swift'
wp option delete 'wcvendors_hide_settings_vendor_name'
wp option delete 'wcvendors_required_settings_vendor_name'
wp option delete 'wcvendors_hide_settings_store_description'
wp option delete 'wcvendors_required_settings_store_description'
wp option delete 'wcvendors_hide_settings_store_seller_info'
wp option delete 'wcvendors_required_settings_store_seller_info'
wp option delete 'wcvendors_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcvendors_admin_notice_%'"
wp option delete 'wcvendors_db_version'
wp option delete 'wcvendors_display_notice_review_request'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcvendors_display_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcvendors_dismissed_notice_%'"
wp option delete 'wcvendors_dismissed_notice_cart_and_checkout'
wp option delete 'wcvendors_dismissed_notice_usage_tracking'
wp option delete 'wcvendors_queue_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'wcvendors_paypal_payout_note'
wp option delete 'wc-vendors-pro_license_manager'
wp option delete 'wc-vendors-gateway-stripe-connect_license_manager'
wp option delete 'wcv-wc-subscriptions_license_manager'
wp option delete 'wc-vendors-membership_license_manager'
wp option delete 'wcvendors-pro-simpleauctions_license_manager'
wp option delete 'wc-vendors-woocommerce-bookings_license_manager'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_currency'
wp option delete 'wcvendors_label_sold_by'
wp option delete 'wcvendors_capability_order_customer_name'
wp option delete 'wcvendors_capability_order_customer_shipping_name'
wp option delete 'wcvendors_capability_order_customer_billing'
wp option delete 'wcvendors_capability_order_customer_shipping'
wp option delete 'woocommerce_ship_to_billing_address_only'
wp option delete 'wcvendors_notify_low_stock'
wp option delete 'wcvendors_notify_backorder_stock'
wp option delete 'wcvendors_capability_order_customer_email'
wp option delete 'wcvendors_capability_order_customer_phone'
wp option delete 'wcvendors_capability_ai_moderate'
wp option delete 'wcv_alter_table_decimal_places_ran'
wp option delete 'woocommerce_paypalap_settings'
wp option delete 'wcvendors_payments_paypal_schedule'
wp option delete 'wcvendors_payments_paypal_instantpay_enable'
wp option delete 'wcvendors_admin_notice_install'
wp option delete 'wc_prd_vendor_options'
wp option delete 'wcvendors_install_date'
wp option delete 'woocommerce_local_delivery_settings'
wp option delete 'woocommerce_international_delivery_settings'
wp option delete 'woocommerce_per_product_settings'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'wcvendors_uninstall_delete_all_data'
wp option delete 'wcvendors_uninstall_delete_custom_table'
wp option delete 'wcvendors_uninstall_delete_custom_pages'
wp option delete 'wcvendors_uninstall_delete_settings_options'
wp option delete 'wcvendors_uninstall_delete_vendor_roles'
wp option delete 'wcvendors_vendor_dashboard_page_id'
wp option delete 'wcvendors_vendors_page_id'
wp option delete 'wcvendors_admin_notice_email_updates'
wp option delete 'wcvendors_allow_settings_policy_html'
wp option delete 'wcvendors_commission_type'
wp option delete 'wcvendors_commission_fee'
wp option delete 'wcvendors_commission_amount'
wp option delete 'wcv_global_commission_tiers'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'wcvendors_display_shop_display_name'
wp option delete 'wcvendors_become_a_vendor_my_account_link_visibility'
wp option delete 'wcvendors_label_become_a_vendor'
wp option delete 'wcvendors_display_label_sold_by_enable'
wp option delete 'wcvendors_label_sold_by_separator'
wp option delete 'wcvendors_display_shop_headers'
wp option delete 'wcvendors_store_single_headers'
wp option delete 'wcvendors_redirect_wp_registration_to_woocommerce_myaccount'
wp option delete 'wcvendors_label_store_info_enable'
wp option delete 'wcvendors_display_label_store_info'
wp option delete 'wcvendors_display_shop_description'
wp option delete 'wcvendors_hide_product_seo'
wp option delete 'wcvendors_product_management_cap'
wp option delete 'wcvendors_order_management_cap'
wp option delete 'wcvendors_settings_management_cap'
wp option delete 'wcvendors_hide_product_basic_attributes'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'wcvendors_orders_sales_range'
wp option delete 'wcvendors_dashboard_date_format'
wp option delete 'wcvendors_orders_per_page'
wp option delete 'wcvendors_hide_order_view_details'
wp option delete 'wcvendors_hide_order_shipping_label'
wp option delete 'wcvendors_hide_order_tracking_number'
wp option delete 'wcvendors_hide_order_mark_shipped'
wp option delete 'wcvendors_orders_override_empty_shipping'
wp option delete 'wcvendors_order_customer_address'
wp option delete 'wcvendors_auto_complete_order_shipped'
wp option delete 'wcvendors_dashboard_page_id'
wp option delete 'wcvendors_mark_all_items_shipped_on_completed_order'
wp option delete 'wcvendors_capability_products_purchase_own'
wp option delete 'wcvendors_capability_products_review_own'
wp option delete 'wcvendors_capability_products_approved'
wp option delete 'wcvendors_dashboard_view_product_new_window'
wp option delete 'wcvendors_vendor_product_trash'
wp option delete 'default_product_cat'
wp option delete 'wcvendors_allow_product_html'
wp option delete 'wcvendors_hide_product_basic_categories'
wp option delete 'wcvendors_hide_product_basic_tags'
wp option delete 'wcvendors_capability_create_product_tags'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wcvendors_products_per_page'
wp option delete 'wcvendors_product_form_template'
wp option delete 'wcvendors_vendor_image_prefix'
wp option delete 'wcvendors_product_max_image_width'
wp option delete 'wcvendors_product_max_image_height'
wp option delete 'wcvendors_product_min_image_width'
wp option delete 'wcvendors_product_min_image_height'
wp option delete 'wcvendors_delete_ratings_on_deleting_product'
wp option delete 'wcvendors_file_display'
wp option delete 'wcvendors_category_limit'
wp option delete 'wcvendors_tag_limit'
wp option delete 'wcvendors_tag_separator'
wp option delete 'wcv_order_totals_chart_use_random_colors'
wp option delete 'wcv_order_totals_chart_fill_color'
wp option delete 'wcv_order_totals_chart_stroke_color'
wp option delete 'wcv_order_totals_chart_hover_fill_color'
wp option delete 'wcv_order_totals_chart_hover_stroke_color'
wp option delete 'wcv_order_totals_chart_fill_opacity'
wp option delete 'wcv_order_totals_chart_stroke_opacity'
wp option delete 'wcv_order_totals_chart_hover_fill_opacity'
wp option delete 'wcv_order_totals_chart_hover_stroke_opacity'
wp option delete 'wcv_product_totals_chart_base_fill_color'
wp option delete 'wcv_product_totals_chart_base_hover_color'
wp option delete 'wcv_product_totals_chart_use_random_colors'
wp option delete 'wcvendors_required_product_media_featured'
wp option delete 'wcvendors_required_product_media_gallery'
wp option delete 'wcvendors_required_product_basic_categories'
wp option delete 'wcvendors_required_product_general_download_files'
wp option delete 'wcvendors_required_product_basic_attributes'
wp option delete 'wcvendors_required_product_shipping_dimensions'
wp option delete 'wcvendors_pro_google_maps_zoom_level'
wp option delete 'wcvendors_dashboard_date_range'
wp option delete 'wcvendors_hide_signup_store'
wp option delete 'wcvendors_hide_settings_store'
wp option delete 'wcvendors_vendor_can_access_wp_admin'
wp option delete 'wcvendors_disable_wp_admin_vendors'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wcvendors_capability_orders_enabled'
wp option delete 'wcvendors_free_orders_per_page'
wp option delete 'wcvendors_capability_frontend_reports'
wp option delete 'wcvendors_use_vertical_menu'
wp option delete 'wcvendors_vendor_dashboard_notice'
wp option delete 'wcvendors_view_store_cap'
wp option delete 'wcvendors_dashboard_view_store_new_window'
wp option delete 'wcvendors_shipping_management_cap'
wp option delete 'wcvendors_vendor_registration_form_redirect'
wp option delete 'wcvendors_commission_management_cap'
wp option delete 'wcvendors_shop_coupon_management_cap'
wp option delete 'wcvendors_ratings_management_cap'
wp option delete 'wcvendors_dashboard_show_logout'
wp option delete 'wcvendors_permission_denied_message'
wp option delete 'wcvendors_permission_denied_message_button_text'
wp option delete 'wcvendors_hide_categories_list'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wcvendors_hide_product_advanced_purchase_notes'
wp option delete 'wcvendors_hide_product_advanced_product_order'
wp option delete 'wcvendors_hide_signup_vendor_name'
wp option delete 'wcvendors_required_signup_vendor_name'
wp option delete 'wcvendors_hide_signup_payment_paypal'
wp option delete 'wcvendors_hide_signup_payment_paypal_payout'
wp option delete 'wcvendors_hide_signup_payment_paypal_venmo'
wp option delete 'wcvendors_hide_signup_payment_bank_account_name'
wp option delete 'wcvendors_hide_signup_payment_bank_account_number'
wp option delete 'wcvendors_hide_signup_payment_bank_name'
wp option delete 'wcvendors_hide_signup_payment_routing_number'
wp option delete 'wcvendors_hide_signup_payment_iban'
wp option delete 'wcvendors_hide_signup_payment_bic_swift'
wp option delete 'wcvendors_hide_signup_store_phone'
wp option delete 'wcvendors_hide_settings_store_phone'
wp option delete 'wcvendors_required_signup_store_phone'
wp option delete 'wcvendors_required_settings_store_phone'
wp option delete 'wcvendors_hide_signup_store_seller_info'
wp option delete 'wcvendors_required_signup_store_seller_info'
wp option delete 'wcvendors_allow_editor_media'
wp option delete 'wcvendors_hide_signup_store_description'
wp option delete 'wcvendors_required_signup_store_description'
wp option delete 'wcvendors_hide_signup_store_address'
wp option delete 'wcvendors_hide_settings_store_address'
wp option delete 'wcvendors_required_signup_store_address'
wp option delete 'wcvendors_required_settings_store_address'
wp option delete 'wcvendors_hide_signup_store_address_chooser'
wp option delete 'wcvendors_hide_settings_store_address_chooser'
wp option delete 'wcvendors_pro_google_maps_api_key'
wp option delete 'wcvendors_hide_signup_store_company_url'
wp option delete 'wcvendors_hide_settings_store_company_url'
wp option delete 'wcvendors_required_settings_store_company_url'
wp option delete 'wcvendors_required_signup_store_company_url'
wp option delete 'wcvendors_hide_attributes_list'
wp option delete 'wcvendors_hide_product_seo_title'
wp option delete 'wcvendors_hide_product_seo_description'
wp option delete 'wcvendors_hide_product_seo_keywords'
wp option delete 'wcvendors_hide_product_seo_opengraph'
wp option delete 'wcvendors_hide_product_seo_twitter'
wp option delete 'wcvendors_hide_product_variations'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wcvendors_hide_product_variations_featured'
wp option delete 'wcvendors_hide_product_variations_sku'
wp option delete 'wcvendors_hide_product_variations_enabled'
wp option delete 'wcvendors_hide_product_variations_downloadable'
wp option delete 'wcvendors_hide_product_variations_virtual'
wp option delete 'wcvendors_hide_product_variations_manage_stock'
wp option delete 'wcvendors_hide_product_variations_price'
wp option delete 'wcvendors_hide_product_variations_sale_price'
wp option delete 'wcvendors_hide_product_variations_stock_qty'
wp option delete 'wcvendors_hide_product_variations_allow_backorders'
wp option delete 'wcvendors_hide_product_variations_stock_status'
wp option delete 'wcvendors_hide_product_variations_shipping_class'
wp option delete 'wcvendors_required_product_variations_shipping_class'
wp option delete 'wcvendors_hide_product_variations_weight'
wp option delete 'wcvendors_hide_product_variations_dimensions'
wp option delete 'wcvendors_hide_product_variations_tax_class'
wp option delete 'wcvendors_hide_product_variations_description'
wp option delete 'wcvendors_hide_product_variations_download_files'
wp option delete 'wcvendors_hide_product_variations_download_limit'
wp option delete 'wcvendors_hide_product_variations_download_expiry'
wp option delete 'wcvendors_variation_actions_dropdown_type'
wp option delete 'wcvendors_terms_and_conditions_visibility'
wp option delete 'wcvendors_payments_paypal_email_enable'
wp option delete 'woocommerce_email_from_address'
wp option delete 'wcvendors_enable_dashboard_cache'
wp option delete 'wcvendors_vendor_singular'
wp option delete 'wcvendors_vendor_plural'
wp option delete 'wcvendors_dashboard_orders_show_reversed_orders'
wp option delete 'wcv_hpos_data_sync_complete'
wp option delete 'wcv_tracking_details_migration_complete'
wp option delete 'wcv_vendor_id_migration_complete'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wcvendors_promotion_plugin_index'
wp option delete 'wcv_verify_customer_ids_complete'
wp option delete 'wcv_create_missing_sub_orders_complete'
wp option delete 'wcvendors_display_notice_hpos_sync_in_progress'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'wcv_hpos_data_sync_progress'
wp option delete 'wcvendors_display_vendors_list_type'
wp option delete 'wcvendors_allow_settings_store_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcvendors_required_product_variations_%'"
wp option delete 'wcvendors_display_vendors_avatar_source'
wp option delete 'wcvendors_hide_settings_social'

# Delete Transients
wp transient delete 'wcvendors_activation_redirect'
wp transient delete 'wcvendors_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcv_user_media_%' OR option_name LIKE '_site_transient_wcv_user_media_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcv_user_disk_usage_%' OR option_name LIKE '_site_transient_wcv_user_disk_usage_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcv_last_request_time_%' OR option_name LIKE '_site_transient_wcv_last_request_time_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcv_requests_made_%' OR option_name LIKE '_site_transient_wcv_requests_made_%'"
wp transient delete 'wcv_delete_duplicate_sub_orders_offset'

# Clear Cron Jobs
wp cron event delete 'wcv_pre_cache_reports'
wp cron event delete 'pv_schedule_mass_payments'
wp cron event delete 'wcvendors_sync_vendor_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_shop_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_shop_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_shop_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_shop_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_paypal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_paypal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_paypal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_paypal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_shop_html_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_shop_html_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_shop_html_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_shop_html_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_custom_commission_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_custom_commission_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_custom_commission_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_custom_commission_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_paypal_masspay_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_paypal_masspay_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_paypal_masspay_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_paypal_masspay_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_paypal_masspay_venmo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_paypal_masspay_venmo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_paypal_masspay_venmo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_paypal_masspay_venmo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_shop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_shop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_shop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_shop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_seller_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_seller_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_seller_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_seller_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_give_vendor_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_give_vendor_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_give_vendor_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_give_vendor_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_give_vendor_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_give_vendor_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_give_vendor_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_give_vendor_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_account_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_account_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_account_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_account_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_account_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_account_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_account_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_account_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_routing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_routing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_routing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_routing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_bank_bic_swift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_bank_bic_swift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_bank_bic_swift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_bank_bic_swift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_vendor_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_vendor_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_vendor_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_vendor_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_vendor_application_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_vendor_application_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_vendor_application_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_vendor_application_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_commission_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_commission_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_commission_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_commission_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_lock_new_products_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_lock_new_products_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_lock_new_products_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_lock_new_products_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_lock_new_products_vendor_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_lock_new_products_vendor_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_lock_new_products_vendor_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_lock_new_products_vendor_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_lock_edit_products_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_lock_edit_products_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_lock_edit_products_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_lock_edit_products_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_lock_edit_products_vendor_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_lock_edit_products_vendor_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_lock_edit_products_vendor_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_lock_edit_products_vendor_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_vacation_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_vacation_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_vacation_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_vacation_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_vacation_mode_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_vacation_mode_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_vacation_mode_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_vacation_mode_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_vacation_disable_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_vacation_disable_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_vacation_disable_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_vacation_disable_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_vendor_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_vendor_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_vendor_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_vendor_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_sub_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_sub_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_sub_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_sub_orders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_vendor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_approve_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_approve_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_approve_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_approve_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_apply_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_apply_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_apply_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_apply_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_shop_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_shop_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_shop_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_shop_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_pl_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_pl_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_pl_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_pl_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_product_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_product_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_product_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_product_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_product_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_product_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_product_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_product_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_product_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_product_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_product_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_product_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_product_seo_opengraph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_product_seo_opengraph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_product_seo_opengraph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_product_seo_opengraph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_product_seo_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_product_seo_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_product_seo_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_product_seo_twitter_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_twitter_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_twitter_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_twitter_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_twitter_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_store_setup_dismissed_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_store_setup_dismissed_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_store_setup_dismissed_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_store_setup_dismissed_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_banner_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_banner_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_banner_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_banner_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_icon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_icon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_icon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_icon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_connect_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_connect_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_connect_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_connect_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcv_commission_payout_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcv_commission_payout_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcv_commission_payout_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcv_commission_payout_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_instagram_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_instagram_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_instagram_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_instagram_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_facebook_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_facebook_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_facebook_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_facebook_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_linkedin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_linkedin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_linkedin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_linkedin_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_youtube_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_youtube_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_youtube_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_youtube_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_pinterest_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_pinterest_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_pinterest_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_pinterest_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_snapchat_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_snapchat_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_snapchat_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_snapchat_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_telegram_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_telegram_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_telegram_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_telegram_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_private_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_private_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_private_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_private_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_product_form_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_product_form_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_product_form_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_product_form_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apply_to_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apply_to_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apply_to_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apply_to_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_phone_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_phone_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_phone_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_phone_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_company_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_company_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_company_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_company_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_md5_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_md5_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_md5_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_md5_guid'"
