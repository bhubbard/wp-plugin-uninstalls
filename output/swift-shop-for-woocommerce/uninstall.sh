#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'swiftshop_version'
wp option delete 'swiftshop_activation_timestamp'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
