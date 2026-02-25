#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storecontrl_api_url'
wp option delete 'storecontrl_api_key'
wp option delete 'storecontrl_api_secret'
wp option delete 'storecontrl_api_images_url'
wp option delete 'storecontrl_api_ftp_user'
wp option delete 'storecontrl_api_ftp_password'
wp option delete 'storecontrl_api_arture_key'
wp option delete 'storecontrl_ssl_verification'
wp option delete 'storecontrl_wc_shipping_method_default'
wp option delete 'storecontrl_wc_payment_method_default'
wp option delete 'storecontrl_wc_customer_type'
wp option delete 'storecontrl_wc_new_order'
wp option delete 'storecontrl_wc_delete_order'
wp option delete 'storecontrl_wc_delete_product'
wp option delete 'storecontrl_process_color'
wp option delete 'storecontrl_process_color_code'
wp option delete 'storecontrl_process_brand'
wp option delete 'storecontrl_process_season'
wp option delete 'storecontrl_process_supplier'
wp option delete 'storecontrl_process_supplier_code'
wp option delete 'storecontrl_process_sub_group'
wp option delete 'storecontrl_synchronisation_time'
wp option delete 'storecontrl_update_images'
wp option delete 'storecontrl_new_product_status'
wp option delete 'storecontrl_no_images_product_status'
wp option delete 'storecontrl_excerpt'
wp option delete 'storecontrl_hide_featured_image_from_gallery'
wp option delete 'storecontrl_update_categories'
wp option delete 'storecontrl_keep_product_title'
wp option delete 'storecontrl_keep_product_description'
wp option delete 'storecontrl_keep_product_categories'
wp option delete 'storecontrl_keep_product_status'
wp option delete 'storecontrl_keep_product_images'
wp option delete 'storecontrl_set_barcode_as_sku'
wp option delete 'storecontrl_link_barcode_to_field'
wp option delete 'storecontrl_disable_variation_alias'
wp option delete 'storecontrl_use_tags'
wp option delete 'storecontrl_tags_categories'
wp option delete 'storecontrl_sale_category'
wp option delete 'storecontrl_custom_category'
wp option delete 'storecontrl_custom_category_excludes'
wp option delete 'storecontrl_creditcheques'
wp option delete 'storecontrl_points_per_purchase'
wp option delete 'storecontrl_process_products_time'
wp option delete 'storecontrl_process_changes_time'
wp option delete 'storecontrl_process_stock_time'
wp option delete 'storecontrl_init_sync'
wp option delete 'process_product_changes'
wp option delete 'process_stock_changes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'storecontrl_wc_shipping_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'storecontrl_wc_payment_method_%'"
wp option delete 'orderpickingapp1'
wp option delete 'storecontrl_use_instock_variations'
wp option delete 'default_product_cat'
wp option delete 'processing_batch_time'

# Delete Transients
wp transient delete 'arture_valid_subscription'
wp transient delete 'update_sale_products_lock'

# Clear Cron Jobs
wp cron event delete 'crontrol_url_cron_job'
wp cron event delete 'storecontrl_retry_new_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_returned_successfully_to_storecontrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_returned_successfully_to_storecontrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_returned_successfully_to_storecontrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_returned_successfully_to_storecontrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_discount_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_discount_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_discount_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_discount_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storecontrl_size_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storecontrl_size_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storecontrl_size_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storecontrl_size_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_brands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_brands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_brands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_brands'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latest_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latest_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latest_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latest_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_couponcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_couponcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_couponcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_couponcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_coupondiscount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_coupondiscount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_coupondiscount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_coupondiscount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
