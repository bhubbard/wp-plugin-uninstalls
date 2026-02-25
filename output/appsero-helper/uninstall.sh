#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appsero_selling_plugin'
wp option delete 'appsero_shortcode_pages_created_at'
wp option delete 'appsero_affiliate_wp_settings'
wp option delete 'appsero_general_settings'
wp option delete 'appsero_connected_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appsero_post_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appsero_post_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appsero_post_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appsero_post_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_appsero_order_license_for_product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_appsero_order_license_for_product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_activations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_activations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_activations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_activations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_software_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_software_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_software_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_software_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
