#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easysecure_active_subscription_orders'

# Clear Cron Jobs
wp cron event delete 'easysecure_handle_renewals'
wp cron event delete 'easysecure_check_subscriptions_for_reminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_custom_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_custom_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_custom_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_custom_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_subscription_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_subscription_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_subscription_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_subscription_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_subscription_interval_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_subscription_interval_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_subscription_interval_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_subscription_interval_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_subscription_expiry_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_subscription_expiry_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_subscription_expiry_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_subscription_expiry_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_subscription_expiry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_subscription_expiry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_subscription_expiry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_subscription_expiry_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_subscription_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_subscription_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_subscription_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_subscription_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easysecure_last_saved_payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easysecure_last_saved_payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easysecure_last_saved_payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easysecure_last_saved_payment_token'"
