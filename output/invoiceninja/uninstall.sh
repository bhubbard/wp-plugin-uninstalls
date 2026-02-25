#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invoiceninja_api_token'
wp option delete 'invoiceninja_api_url'
wp option delete 'invoiceninja_included_roles'
wp option delete 'invoiceninja_match_found'
wp option delete 'invoiceninja_currencies'
wp option delete 'invoiceninja_countries'
wp option delete 'invoiceninja_sync_clients'
wp option delete 'invoiceninja_profile'
wp option delete 'invoiceninja_product_label'
wp option delete 'invoiceninja_products_label'
wp option delete 'invoiceninja_sync_products'
wp option delete 'invoiceninja_product_template'
wp option delete 'invoiceninja_image_template'
wp option delete 'invoiceninja_product_page_id'
wp option delete 'invoiceninja_online_purchases'
wp option delete 'invoiceninja_add_to_cart_label'
wp option delete 'invoiceninja_buy_now_label'
wp option delete 'invoiceninja_checkout_label'
wp option delete 'invoiceninja_out_of_stock_label'
wp option delete 'invoiceninja_product_css'
wp option delete 'invoiceninja_products_css'
wp option delete 'invoiceninja_api_url '

# Clear Cron Jobs
wp cron event delete 'auto_refresh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_name1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_name1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_name1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_name1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_rate1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_rate1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_rate1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_rate1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_name2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_name2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_name2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_name2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_rate2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_rate2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_rate2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_rate2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_name3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_name3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_name3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_name3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_rate3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_rate3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_rate3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_rate3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_value1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_value1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_value1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_value1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_value2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_value2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_value2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_value2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_value3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_value3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_value3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_value3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_value4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_value4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_value4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_value4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'in_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'in_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'in_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'in_stock_quantity'"
