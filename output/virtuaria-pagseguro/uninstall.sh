#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_virt_pagseguro_settings'
wp option delete 'virtuaria_pagseguro_not_authorized'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'homolog_number'

# Delete Transients
wp transient delete 'virtuaria_pagseguro_main_setting_saved'

# Clear Cron Jobs
wp cron event delete 'virtuaria_pagseguro_pix_confirm_payment'
wp cron event delete 'pagseguro_process_update_order_status'
wp cron event delete 'pagseguro_pix_check_payment'
wp cron event delete 'pagseguro_ticket_check_payment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pagseguro_credit_info_store_%'"
