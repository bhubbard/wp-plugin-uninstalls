#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_demo_store'
wp option delete 'woocommerce_demo_store_notice'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_review_rating_required'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_shop_page_display'
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'shop_catalog_image_size'
wp option delete 'shop_single_image_size'
wp option delete 'shop_thumbnail_image_size'
wp option delete 'woocommerce_enable_lightbox'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_file_download_method'
wp option delete 'woocommerce_downloads_require_login'
wp option delete 'woocommerce_downloads_grant_access_after_payment'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_calc_discounts_sequentially'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_unforce_ssl_checkout'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_checkout_pay_endpoint	'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_myaccount_add_payment_method_endpoint'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_shipping_method_format'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_specific_ship_to_countries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
