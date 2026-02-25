#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safeg_setting'
wp option delete 'enable_plugin'
wp option delete 'otp_enable'
wp option delete 'email_otp_disable'
wp option delete 'get_post'
wp option delete 'otp_woo_alert'
wp option delete 'woo_pending_alert'
wp option delete 'woo_processing_alert'
wp option delete 'woo_hold_alert'
wp option delete 'woo_fail_alert'
wp option delete 'woo_cancel_alert'
wp option delete 'woo_complete_alert'
wp option delete 'woo_refund_alert'
wp option delete 'woo_partially_alert'
wp option delete 'woo_shipped_alert'
wp option delete 'user_reg_alert'
wp option delete 'safeg_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safeg_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safeg_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safeg_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safeg_phone_number'"
