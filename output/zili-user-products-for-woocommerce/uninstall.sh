#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_user_products_add_to_my_account'
wp option delete 'alg_wc_user_products_my_account_tab_content'
wp option delete 'alg_wc_user_products_fields_enabled'
wp option delete 'alg_wc_user_products_fields_required'
wp option delete 'alg_wc_user_products_status'
wp option delete 'alg_wc_user_products_user_visibility'
wp option delete 'alg_wc_user_products_product_type'
wp option delete 'alg_wc_user_products_custom_taxonomies_total'
wp option delete 'alg_wc_user_products_custom_taxonomy_enabled'
wp option delete 'alg_wc_user_products_custom_taxonomy_required'
wp option delete 'alg_wc_user_products_custom_taxonomy_id'
wp option delete 'alg_wc_user_products_custom_taxonomy_title'
wp option delete 'alg_wc_user_products_custom_fields_total'
wp option delete 'alg_wc_user_products_custom_field_enabled'
wp option delete 'alg_wc_user_products_custom_field_required'
wp option delete 'alg_wc_user_products_custom_field_meta_key'
wp option delete 'alg_wc_user_products_custom_field_title'
wp option delete 'alg_wc_user_products_require_unique_title'
wp option delete 'alg_wc_user_products_emails_enabled'
wp option delete 'alg_wc_user_products_emails_to'
wp option delete 'alg_wc_user_products_emails_subject'
wp option delete 'alg_wc_user_products_emails_message'
wp option delete 'alg_wc_user_products_message_product_successfully_added'
wp option delete 'alg_wc_user_products_message_product_successfully_edited'
wp option delete 'alg_wc_user_products_price_step'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'alg_wc_user_products_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
