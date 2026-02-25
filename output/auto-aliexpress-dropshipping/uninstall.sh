#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_aliexpress_enable_accessibility'
wp option delete 'auto_robot_license_activated'
wp option delete 'auto_aliexpress_version_pro'
wp option delete 'auto_aliexpress_addons'
wp option delete 'auto_aliexpress_pagination_entries'
wp option delete 'auto_aliexpress_pagination_listings'

# Delete Transients
wp transient delete '_auto_aliexpress_activation_redirect'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'aliexpress_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a2w_external_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a2w_external_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a2w_external_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a2w_external_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_a2w_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_a2w_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_a2w_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_a2w_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swatch_type_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swatch_type_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swatch_type_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swatch_type_options'"
