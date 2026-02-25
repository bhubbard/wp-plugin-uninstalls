#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'linkgreen_product_import_debug_options'
wp option delete 'linkgreen_product_import_setup_options'
wp option delete 'linkgreen_product_import_input_examples'

# Delete Transients
wp transient delete 'lgpi-category-mapping'
wp transient delete 'wc_attribute_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkgreen_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkgreen_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkgreen_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkgreen_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkgreen_item_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkgreen_item_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkgreen_item_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkgreen_item_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkgreen_item_dropship_supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkgreen_item_dropship_supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkgreen_item_dropship_supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkgreen_item_dropship_supplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkgreen_item_dropship_supplier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkgreen_item_dropship_supplier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkgreen_item_dropship_supplier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkgreen_item_dropship_supplier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_knawatfibu_url'"
