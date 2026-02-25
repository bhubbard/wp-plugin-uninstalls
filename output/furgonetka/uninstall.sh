#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_companyName'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_postCode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_street'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sender_telephone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cod_iban'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cod_accountOwner'"
wp option delete 'rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'furgonetka_daily_event'

