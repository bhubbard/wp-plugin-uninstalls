#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sslcare_notification'
wp option delete 'enable_plugin'
wp option delete 'sslcare_api_version'
wp option delete 'enable_unicode_sms'
wp option delete 'sslcare_pending_alert'
wp option delete 'sslcare_processing_alert'
wp option delete 'sslcare_onhold_alert'
wp option delete 'sslcare_failed_alert'
wp option delete 'sslcare_canceled_alert'
wp option delete 'sslcare_completed_alert'
wp option delete 'sslcare_refund_alert'
wp option delete 'sslcare_partial_alert'
wp option delete 'sslcare_shipped_alert'
wp option delete 'sslcare_admin_sms_alert'
wp option delete 'sslcare_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sslcare_login_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sslcare_login_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sslcare_login_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sslcare_login_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
