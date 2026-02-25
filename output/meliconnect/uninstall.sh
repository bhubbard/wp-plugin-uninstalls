#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'meliconnect_general_image_attachment_ids'
wp option delete 'meliconnect_general_description_template'
wp option delete 'meliconnect_general_sync_type'
wp option delete 'meliconnect_general_sync_items_batch'
wp option delete 'meliconnect_general_sync_frecuency_minutes'
wp option delete 'meliconnect_general_sync_method'
wp option delete 'meliconnect_export_title'
wp option delete 'meliconnect_export_stock'
wp option delete 'meliconnect_export_price'
wp option delete 'meliconnect_export_images'
wp option delete 'meliconnect_export_sku'
wp option delete 'meliconnect_export_product_attributes'
wp option delete 'meliconnect_export_ml_status'
wp option delete 'meliconnect_export_variations'
wp option delete 'meliconnect_export_description'
wp option delete 'meliconnect_export_description_to'
wp option delete 'meliconnect_export_type'
wp option delete 'meliconnect_export_finalize_ml'
wp option delete 'meliconnect_import_title'
wp option delete 'meliconnect_import_stock'
wp option delete 'meliconnect_import_price'
wp option delete 'meliconnect_import_images'
wp option delete 'meliconnect_import_sku'
wp option delete 'meliconnect_import_categories'
wp option delete 'meliconnect_max_category_level'
wp option delete 'meliconnect_import_product_attributes'
wp option delete 'meliconnect_import_ml_status'
wp option delete 'meliconnect_import_variations'
wp option delete 'meliconnect_import_variations_as'
wp option delete 'meliconnect_import_description'
wp option delete 'meliconnect_import_description_to'
wp option delete 'meliconnect_import_type'
wp option delete 'meliconnect_import_price_variation_operand'
wp option delete 'meliconnect_import_price_variation_amount'
wp option delete 'meliconnect_import_price_variation_type'
wp option delete 'meliconnect_import_stock_variation_operand'
wp option delete 'meliconnect_import_stock_variation_amount'
wp option delete 'meliconnect_import_stock_variation_type'
wp option delete 'meliconnect_import_cancel_requested'
wp option delete 'meliconnect_export_cancel_requested'
wp option delete 'meliconnect_db_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'meliconnect_pending_connection_notifications'
wp option delete 'meliconnect_modules'
wp option delete 'meliconnect_products_filled'
wp option delete 'meliconnect_custom_export_lock'
wp option delete 'meliconnect_custom_import_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_asoc_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_asoc_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_asoc_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_asoc_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_listing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_seller_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_seller_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_seller_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_seller_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_sync_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_asoc_variation_sync_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_sync_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_sync_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_asoc_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_asoc_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_export_meli_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_export_meli_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_export_meli_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_export_meli_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_last_export_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_last_export_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_last_export_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_last_export_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_export_meli_error_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_export_meli_error_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_export_meli_error_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_export_meli_error_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_last_export_json_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_last_export_json_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_last_export_json_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_last_export_json_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_matched_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_matched_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_matched_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_matched_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_listing_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_listing_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_listing_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_listing_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_sub_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_sub_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_sub_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_sub_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_site_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_site_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_site_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_site_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_catalog_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_catalog_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_catalog_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_catalog_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_domain_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_domain_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_domain_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_domain_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_sold_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_sold_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_sold_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_sold_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_shipping_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_shipping_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_shipping_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_shipping_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_image_seller_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_image_seller_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_image_seller_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_image_seller_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meliconnect_meli_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meliconnect_meli_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meliconnect_meli_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meliconnect_meli_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meliconnect_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meliconnect_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meliconnect_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meliconnect_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meliconnect_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meliconnect_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meliconnect_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meliconnect_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
