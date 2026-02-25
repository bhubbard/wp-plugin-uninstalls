#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'egoi_api_key'
wp option delete 'egoi_sms_order_sender'
wp option delete 'egoi_sms_order_recipients'
wp option delete 'egoi_sms_order_texts'
wp option delete 'egoi_sms_order_payment_texts'
wp option delete 'egoi_email_order_payment_texts'
wp option delete 'egoi_tracking_carriers_urls'
wp option delete 'egoi_sms_follow_price'
wp option delete 'egoi_sms_abandoned_cart'
wp option delete 'egoi_custom_carriers'
wp option delete 'egoi_transactional_email'
wp option delete 'egoi_activation_data'
wp option delete 'egoi_sms_counter'
wp option delete 'egoi_has_list'

# Delete Transients
wp transient delete 'teste_egoi_1'

# Clear Cron Jobs
wp cron event delete 'egoi_sms_order_event'
wp cron event delete 'egoi_woo_smsonw_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'egoi_notification_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'egoi_notification_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'egoi_notification_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'egoi_notification_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
