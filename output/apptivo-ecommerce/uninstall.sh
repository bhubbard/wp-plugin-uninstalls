#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apptivo_ecommerce_min_product_images'
wp option delete 'apptivo_ecommerce_plugin_version'
wp option delete 'apptivo_ecommerce_plugin_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp option delete 'apptivo_ecommerce_products_slug'
wp option delete 'apptivo_ecommerce_ordernumber_prefix'
wp option delete 'apptivo_ecommerce_ordernumber_startswith'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'apptivo_ecommerce_apikey'
wp option delete 'apptivo_apikey'
wp option delete 'apptivo_accesskey'
wp option delete 'apptivo_ecommerce_products_page_id'
wp option delete 'apptivo_ecommerce_sync_status'
wp option delete 'apptivo_ecommerce_errors'
wp option delete 'apptivo_ecommerce_accesskey'
wp option delete 'apptivo_ecommerce_thanks_page_id'
wp option delete 'apptivo_ecommerce_products_sorting_type'
wp option delete 'apptivo_ecommerce_thumbnail_image_crop'
wp option delete 'apptivo_ecommerce_catalog_image_crop'
wp option delete 'apptivo_ecommerce_single_image_crop'
wp option delete 'apptivo_ecommerce_checkout_page_id'
wp option delete 'apptivo_ecommerce_cart_page_id'
wp option delete 'apptivo_ecommerce_print_receipt_page_id'
wp option delete 'apptivo_ecommerce_secure_checkout_page_id'
wp option delete 'apptivo_ecommerce_single_image_height'
wp option delete 'apptivo_ecommerce_enable_a_net_confirm'
wp option delete 'apptivo_ecommerce_register_page_id'
wp option delete 'apptivo_ecommerce_login_page_id'
wp option delete 'apptivo_ecommerce_myaccount_page_id'
wp option delete 'apptivo_ecommerce_force_ssl_checkout'
wp option delete 'apptivo_ecommerce_products_per_page'
wp option delete 'apptivo_ecommerce_enable_regular_price'
wp option delete 'apptivo_ecommerce_demo_store'
wp option delete 'apptivo_ecommerce_logout_page_id'
wp option delete 'apptivo_ecommerce_change_password_page_id'
wp option delete 'apptivo_ecommerce_redirects_to_cart'
wp option delete 'apptivo_ecommerce_enable_lightbox'
wp option delete 'apptivo_ecommerce_enable_item_code'
wp option delete 'apptivo_ecommerce_thumbnail_image_width'
wp option delete 'apptivo_ecommerce_thumbnail_image_height'
wp option delete 'apptivo_ecommerce_catalog_image_width'
wp option delete 'apptivo_ecommerce_catalog_image_height'
wp option delete 'apptivo_ecommerce_single_image_width'
wp option delete 'apptivo_ecommerce_single_error_message'
wp option delete 'apptivo_ecommerce_ship_to_billing_address_only'
wp option delete 'apptivo_ecommerce_enable_gift'
wp option delete 'apptivo_ecommerce_terms_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'apptivo_ecommerce_recaptcha_mode'
wp option delete 'apptivo_ecommerce_recaptcha_privatekey'
wp option delete 'apptivo_ecommerce_enable_remove_tax_and_shipping'
wp option delete 'apptivo_ecommerce_apply_coupan'
wp option delete 'apptivo_ecommerce_products_page_title'
wp option delete 'apptivo_ecommerce_enable_sortby'
wp option delete 'apptivo_ecommerce_products_pagination_type'
wp option delete 'apptivo_ecommerce_print_receipt_logo'
wp option delete 'apptivo_ecommerce_print_receipt_address'
wp option delete 'apptivo_ecommerce_recaptcha_theme'
wp option delete 'apptivo_ecommerce_recaptcha_language'
wp option delete 'apptivo_ecommerce_recaptcha_publickey'
wp option delete 'apptivo_ecommerce_enable_related_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_ecommerce_exclude_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_ecommerce_exclude_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_ecommerce_exclude_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_ecommerce_exclude_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_item_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_item_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_item_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_item_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_item_uom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_item_uom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_item_uom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_item_uom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_item_manufactured_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_item_manufactured_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_item_manufactured_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_item_manufactured_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_supplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_track_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_track_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_track_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_track_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_track_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_track_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_track_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_track_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apptivo_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apptivo_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apptivo_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apptivo_featured'"
