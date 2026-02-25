#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdc_store_page'
wp option delete 'hdc_checkout_page'
wp option delete 'hdc_payment_page'
wp option delete 'HDC_PLUGIN_VERSION'
wp option delete 'hdc_order_number'
wp option delete 'hdc_store_name'
wp option delete 'hdc_store_email'
wp option delete 'hdc_order_stats'
wp option delete 'hdc_store_currency'
wp option delete 'hdc_stripe_public_key'
wp option delete 'hdc_stripe_secret_key'
wp option delete 'hdc_paypal_address'
wp option delete 'hdc_paypal_sandbox'
wp option delete 'hdc_shipping'
wp option delete 'hdc_store_address'
wp option delete 'hdc_store_city'
wp option delete 'hdc_store_state'
wp option delete 'hdc_store_country'
wp option delete 'hdc_store_zip'
wp option delete 'hdc_payment_gateway'
wp option delete 'hdc_product_view_type'
wp option delete 'hdc_shipping_unit'
wp option delete 'hdc_shipping_canada_post_methods'
wp option delete 'hdc_shipping_canada_post_merchant_user'
wp option delete 'hdc_shipping_canada_post_merchant_password'
wp option delete 'hdc_shipping_canada_post_customer'
wp option delete 'hdc_shipping_flat_rate_shipping_cart'
wp option delete 'hdc_shipping_flat_rate_shipping_class_a'
wp option delete 'hdc_shipping_flat_rate_shipping_class_b'
wp option delete 'hdc_shipping_flat_rate_shipping_class_c'
wp option delete 'hdc_shipping_flat_rate_shipping_class_d'
wp option delete 'hdc_shipping_flat_rate_shipping_class_e'
wp option delete 'hdc_shipping_usps_methods'
wp option delete 'hdc_shipping_usps_user'
wp option delete 'hdc_shipping_usps_international'
wp option delete 'hdc_shipping_flat_rate_shipping_class_A'
wp option delete 'hdc_shipping_flat_rate_shipping_class_B'
wp option delete 'hdc_shipping_flat_rate_shipping_class_C'
wp option delete 'hdc_shipping_flat_rate_shipping_class_D'
wp option delete 'hdc_shipping_flat_rate_shipping_class_E'
wp option delete 'hdc_i_love_hdcommerce'
wp option delete 'hdc_product_headings'
wp option delete 'hdc_disable_reviews'
wp option delete 'hdc_store_selling_countries'
wp option delete 'hdc_tax_inclusive'
wp option delete 'hdc_shipping_disable'
wp option delete 'hdc_shipping_free'
wp option delete 'hdc_tax_chart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_order_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_order_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_order_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_order_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_address2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_address2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_address2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_address2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_method_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_method_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_method_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_method_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_tax_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_tax_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_tax_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_tax_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_checkout_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_checkout_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_checkout_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_checkout_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_saved_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_saved_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_saved_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_saved_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_saved_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_saved_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_saved_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_saved_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_short_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_short_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_short_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_short_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_featured_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_featured_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_featured_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_featured_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_shipping_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_shipping_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_shipping_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_shipping_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_product_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_product_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_product_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_product_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_expire_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_expire_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_expire_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_expire_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_restrict_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_restrict_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_restrict_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_restrict_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_restrict_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_restrict_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_restrict_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_restrict_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_percent_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_percent_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_percent_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_percent_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdc_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdc_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdc_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdc_transaction_id'"
