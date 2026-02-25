#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aco_wc_checkout_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'aco_wc_checkout_default_fields'
wp option delete 'awcfe_aco_pdf'
wp option delete 'ship_to_different_address'
wp option delete 'remove_order_notes_title'
wp option delete 'order_Notes_Title'
wp option delete 'force_create_Account'
wp option delete 'privacy_text'
wp option delete 'checkout_coupon_form'
wp option delete 'remove_shipping_field'
wp option delete 'remove_terms_condition'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'awcfe_install_date'
wp option delete 'awcfe_rate_us'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_address_book_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_address_book_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_address_book_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_address_book_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_nickname'"
