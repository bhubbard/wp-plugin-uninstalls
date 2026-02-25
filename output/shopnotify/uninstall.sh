#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopnotify_cart_timeout'
wp option delete 'shopnotify_first_notification_timeout'
wp option delete 'shopnotify_second_notification_timeout'
wp option delete 'shopnotify_third_notification_timeout'
wp option delete 'shopnotify_delete_cart_after_timeout'
wp option delete 'shopnotify_cart_deletion_timeout'
wp option delete 'shpn_whatsapp_license_key'
wp option delete 'shopnotify_first_shpn_template'
wp option delete 'shopnotify_second_shpn_template'
wp option delete 'shopnotify_third_shpn_template'
wp option delete 'shpn_whatsapp_license_status'
wp option delete 'Shopnotify_redirect'
wp option delete 'Shopnotify_enable_whatsapp'
wp option delete 'shopnotify_first_email_template'
wp option delete 'shopnotify_first_email_subject'
wp option delete 'shopnotify_second_email_template'
wp option delete 'shopnotify_second_email_subject'
wp option delete 'shopnotify_third_email_template'
wp option delete 'shopnotify_third_email_subject'
wp option delete 'shpn_store_name'

# Clear Cron Jobs
wp cron event delete 'shpn_clear_old_carts'
wp cron event delete 'shpn_send_abandoned_cart_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
