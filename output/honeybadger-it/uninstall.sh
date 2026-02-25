#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'honeybadger_the_honeybadger_it_activation_is_done'
wp option delete 'HONEYBADGER_IT_VERSION'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_hold_stock_minutes'

# Clear Cron Jobs
wp cron event delete 'honeybadger_it_plugin_clean_db_tmp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_honeybadger_split_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_honeybadger_split_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_honeybadger_split_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_honeybadger_split_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_honeybadger_split_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_honeybadger_split_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_honeybadger_split_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_honeybadger_split_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
