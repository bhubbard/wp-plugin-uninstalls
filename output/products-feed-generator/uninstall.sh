#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfg_product_debug_log'
wp option delete 'pfg_product_attributes_map'
wp option delete 'pfg_product_identifiers'
wp option delete 'pfg_product_feed_name'
wp option delete 'pfg_product_variants'
wp option delete 'pfg_product_brand'
wp option delete 'pfg_product_details_section'
wp option delete 'pfg_product_material'
wp option delete 'pfg_cron_schedule'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'generate_google_products_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_product_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_product_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_product_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_product_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_product_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_product_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_product_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_product_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_google_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_google_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_google_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_google_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_condition'"
