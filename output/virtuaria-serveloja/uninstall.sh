#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtuaria_serveloja_not_authorized'
wp option delete 'virtuaria_serveloja_webhook_id'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_virtuaria_serveloja_credit_settings'
wp option delete 'virtuaria_serveloja_settings'

# Delete Transients
wp transient delete 'virtuaria_serveloja_main_setting_saved'

# Clear Cron Jobs
wp cron event delete 'serveloja_pix_check_payment'
wp cron event delete 'virtuaria_serveloja_pix_confirm_payment'
wp cron event delete 'serveloja_ticket_check_payment'
wp cron event delete 'serveloja_process_update_order_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_serveloja_credit_info_store_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_serveloja_credit_info_store_%'"
