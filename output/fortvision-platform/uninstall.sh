#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fortvision_settings'
wp option delete 'fortvision_orders_export_need_to_send'
wp option delete 'cron'
wp option delete 'fortvision_customers_export_need_to_send'
wp option delete 'fortvision_product_export_need_to_send'
wp option delete 'fortvision_debug_mode_enabled'
wp option delete 'fortvision_debug_mode_enabled_requests'
wp option delete '_fortvision_form'
wp option delete 'fortvision_sync_options'
wp option delete 'fortvision_orders_export_sent'
wp option delete 'fortvision_customers_export_sent'
wp option delete 'fortvision_initialexport'
wp option delete 'fortvision_product_export_sent'
wp option delete 'fortvision_script_val'
wp option delete 'fortvision_sync_finished'

# Delete Transients
wp transient delete 'fortvision_admin_notice'
wp transient delete 'fortvision_uninstall'

# Clear Cron Jobs
wp cron event delete 'sendorders_pack'
wp cron event delete 'checkHistoryIsdone'
wp cron event delete 'sendcustomers_pack'
wp cron event delete 'sendproducts_pack'
wp cron event delete 'syncOrders_scheduled'
wp cron event delete 'syncCustomers_scheduled'
wp cron event delete 'syncProducts_scheduled'
wp cron event delete 'nop_scheduled'
wp cron event delete 'dailyping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortvisionAcceptMarketing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortvisionAcceptMarketing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortvisionAcceptMarketing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortvisionAcceptMarketing'"
