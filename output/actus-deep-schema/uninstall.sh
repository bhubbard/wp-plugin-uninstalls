#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ACSC-options'
wp option delete 'actus-deep-schema-activated'
wp option delete 'ACSC_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ACSC-%'"
wp option delete 'ACSC-website-1'
wp option delete 'ACSC-website-1-admin'
wp option delete 'ACSC-audi-1'
wp option delete 'ACSC-busi-1'
wp option delete 'ACSC-busi-1-admin'
wp option delete 'learn_press_currency'
wp option delete 'rank-math-options-titles'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_specific_ship_to_countries'
wp option delete 'woocommerce_all_except_countries'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ACSC-pers-wp-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autodescription-user-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autodescription-user-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autodescription-user-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autodescription-user-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ACSC-media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ACSC-media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ACSC-media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ACSC-media'"
