#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsms_flash_message'
wp option delete 'wpsms_gateway_credit'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'wp_sms_db_version'
wp option delete 'wp_notification_new_wp_version'
wp option delete 'wp_last_credit'
wp option delete 'wp_sms_is_fresh'
wp option delete 'wp_sms_installation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_form%'"
wp option delete 'wp_last_send_notification'
wp option delete 'wp_sms_mcc'
wp option delete 'wpsms_settings'
wp option delete 'wp_sms_plugin_version'
wp option delete 'wp_sms_dismissed_notices'
wp option delete 'wp_sms_notifications'
wp option delete 'wp_sms_import_file'
wp option delete 'woocommerce_custom_orders_table_enabled'

# Delete Transients
wp transient delete 'update_core'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_download_info' OR option_name LIKE '_site_transient_%_download_info'"
wp transient delete 'wpsms_uwazii_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wp_sms_flash_notices'

# Clear Cron Jobs
wp cron event delete 'wp_sms_admin_email_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsms_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsms_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsms_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsms_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsms_scheduled_send_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsms_scheduled_send_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsms_scheduled_send_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsms_scheduled_send_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsms_scheduled_message_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsms_scheduled_message_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsms_scheduled_message_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsms_scheduled_message_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsms_scheduled_receivers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsms_scheduled_receivers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsms_scheduled_receivers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsms_scheduled_receivers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
