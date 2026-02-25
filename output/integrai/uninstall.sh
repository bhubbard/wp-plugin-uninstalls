#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_integrai-settings_settings'

# Clear Cron Jobs
wp cron event delete 'integrai_cron_resend_events'
wp cron event delete 'integrai_cron_abandoned_cart'
wp cron event delete 'integrai_cron_proccess_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_integrai_transaction_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_integrai_transaction_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_integrai_transaction_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_integrai_transaction_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marketplace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marketplace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marketplace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marketplace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payments'"
