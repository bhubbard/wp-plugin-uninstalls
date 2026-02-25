#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easycommerce-pro_license'
wp option delete 'easycommerce-setup_wizard'
wp option delete 'easycommerce-general-store'
wp option delete '_easycommerce-no_tracking'
wp option delete 'easycommerce-general-business'
wp option delete 'easycommerce-tax-settings'
wp option delete 'easycommerce-shipping-settings'
wp option delete 'easycommerce-payment-methods'
wp option delete 'easycommerce-payment-pricing'
wp option delete 'easycommerce_api'
wp option delete 'easycommerce_activated'
wp option delete 'easycommerce_importer_headers'
wp option delete 'easycommerce_importer_rows'
wp option delete 'easycommerce_importer_mapping'
wp option delete 'easycommerce_import_statuses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp option delete 'easycommerce_addons'
wp option delete 'easycommerce_db_version'
wp option delete 'easycommerce-locations_db_loaded'
wp option delete 'easycommerce_migration_status'
wp option delete 'easycommerce-general-branding'
wp option delete 'easycommerce_block_migrated'
wp option delete 'easycommerce_checkout_editor_billing_fields'
wp option delete 'easycommerce_ai_credits'
wp option delete 'easycommerce_dismissed_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easycommerce-chat_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easycommerce-chat_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easycommerce-chat_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easycommerce-chat_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easycommerce_cart_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easycommerce_cart_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easycommerce_cart_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easycommerce_cart_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address'"
