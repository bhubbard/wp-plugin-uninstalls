#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gpls-rfq_settings'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'rfq_cart_sc_section_show_link_to_rfq_page'
wp option delete 'settings_gpls_woo_rfq_allow_favorites'
wp option delete 'settings_gpls_woo_rfq_allow_anon_favorites'
wp option delete 'settings_gpls_woo_rfq_normal_checkout_quote_single_position'
wp option delete 'settings_gpls_woo_rfq_normal_checkout_quote_position'
wp option delete 'settings_gpls_woo_rfq_allow_out_of_stock'
wp option delete 'settings_gpls_woo_rfq_checkout_option'
wp option delete 'settings_gpls_woo_rfq_show_prices'
wp option delete 'settings_gpls_woo_rfq_plus_normal_checkout'
wp option delete 'settings_gpls_woo_rfq_limit_to_rfq_only'
wp option delete 'rfq_cart_wordings_outofstock_text'
wp option delete 'settings_gpls_woo_rfq_product_page_ajax'
wp option delete 'settings_gpls_woo_rfq_hide_visitor_prices'
wp option delete 'settings_gpls_woo_rfq_normal_checkout_show_prices'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'rfq_cart_sc_section_show_link_to_favorites_page'
wp option delete 'settings_gpls_woo_rfq_hide_visitor_add_to_quote'
wp option delete 'woocommerce_manage_stock'
wp option delete 'settings_gpls_woo_rfq_read_more'
wp option delete 'rfq_cart_wordings_in_rfq'
wp option delete 'rfq_cart_wordings_add_to_rfq'
wp option delete 'settings_gpls_woo_rfq_Select_Options'
wp option delete 'rfq_cart_wordings_view_rfq_cart'
wp option delete 'settings_gpls_woo_rfq_hide_visitor_prices_normal'
wp option delete 'rfq_cart_wordings_add_to_cart'
wp option delete 'rfq_cart_wordings_in_cart'
wp option delete 'rfq_cart_sc_section_rfq_page_create_accounts'
wp option delete 'gpls_woo_rfq_quote_submit_confirm_message'
wp option delete 'rfq_cart_wordings_submit_your_rfq_text'
wp option delete 'settings_gpls_woo_rfq_no_payment_checkout'
wp option delete 'settings_gpls_woo_rfq_show_applied_coupons'
wp option delete 'rfq_cart_wordings_gpls_woo_rfq_update_rfq_cart_button'
wp option delete 'settings_gpls_woo_rfq_rfq_checkout_page_title_option'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'settings_gpls_woo_rfq_allow_coupon_entry'
wp option delete 'rfq_cart_wordings_rfq_cart_is_empty'
wp option delete 'gpls_woo_rfq_qr_page_check'
wp option delete 'gpls_woo_fav_qr_page_check'
wp option delete 'rfq_cart_sc_section_link_to_favorites_page'
wp option delete 'settings_gpls_woo_rfq_allow_menu'
wp option delete 'gpls_woo_rfq_menu_check'
wp option delete 'settings_gpls_woo_rfq_plus_skip_zero_cart'
wp option delete 'settings_gpls_woo_rfq_show_cart_link_archive_top'
wp option delete 'settings_gpls_woo_rfq_show_cart_link_archive_end'
wp option delete 'settings_gpls_woo_rfq_show_cart_link_cart'
wp option delete 'settings_gpls_woo_rfq_show_cart_single_page'
wp option delete 'settings_gpls_woo_rfq_show_prices_in_my_account'
wp option delete 'settings_gpls_woo_ninja_form_option'
wp option delete 'settings_gpls_woo_rfq_old_shipping_coupon'
wp option delete 'settings_gpls_woo_rfq_show_shipping'
wp option delete 'settings_gpls_woo_rfq_quote_request_label'
wp option delete 'gpls_woo_rfq_hide_price_cart_checkout'
wp option delete 'rfq_cart_hide_quote_extra_css'
wp option delete 'settings_gpls_woo_rfq_hide_visitor_add_to_quote_cart'
wp option delete 'settings_gpls_woo_rfq_limit_to_rfq_only_hide_prices'
wp option delete 'settings_gpls_woo_rfq_sessions_table_fixed_rfq1'
wp option delete 'settings_gpls_woo_rfq_sessions_notable_fix21z'
wp option delete 'settings_gpls_woo_rfq_sessions_notable_fix21487m2we'
wp option delete 'settings_gpls_woo_fix21487m23'
wp option delete 'settings_gpls_notable_fix22w54e'
wp option delete 'settings_gpls_fix_faves'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'rfq_cart_sc_section_hide_price_to_thankyou_page'
wp option delete 'settings_gpls_woo_rfq_admin_email_reply_to'
wp option delete 'settings_gpls_woo_rfq_no_payment_checkout_text'
wp option delete 'settings_gpls_woo_rfq_show_cart_thank_you_page'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'rfq_cart_wordings_proceed_to_rfq'
wp option delete 'settings_gpls_woo_rfq_limit_to_rfq_only_cart_alt_label'
wp option delete 'settings_gpls_woo_rfq_add_to_favorites_label'
wp option delete 'gpls_rfq_show_add_to_quote_qty'
wp option delete 'settings_rfq_favs_wordings_view_favs_cart'
wp option delete 'rfq_cart_wordings_quote_request_currently_empty'
wp option delete 'rfq_cart_wordings_return_to_shop'
wp option delete 'settings_gpls_woo_rfq_customer_info_label'
wp option delete 'rfq_cart_sc_section_rfq_page_phone_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_company_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_country_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_state_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_address_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_city_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_zip_hide'
wp option delete 'rfq_cart_sc_section_rfq_page_comment_hide'
wp option delete 'woocommerce_default_country'
wp option delete 'settings_gpls_woo_rfq_cookie_or_phpsession'
wp option delete 'settings_gpls_woo_rfq_cookie_prepend'
wp option delete 'settings_gpls_woo_rfq_cookie_days_keep'
wp option delete 'settings_gpls_woo_rfq_records_clean_limit'
wp option delete 'settings_gpls_woo_rfq_cookie'

# Delete Transients
wp transient delete 'redirect_to_quote_request'
wp transient delete 'rfq_page_plus_Widget'

# Clear Cron Jobs
wp cron event delete 'RFQTK_php_session_daily_garbage_collection'
wp cron event delete 'rfqtk_wp_session_daily_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpls_woo_rfq_ninja_product_form_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpls_woo_rfq_rfq_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpls_woo_rfq_rfq_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpls_woo_rfq_rfq_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpls_woo_rfq_rfq_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_added_by_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_added_by_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_added_by_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_added_by_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpls_woo_rfq_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpls_woo_rfq_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpls_woo_rfq_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpls_woo_rfq_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gpls_new_order_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gpls_new_order_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gpls_new_order_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gpls_new_order_email_sent'"
