#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewtc-email-subject'
wp option delete 'ewtc-email-text-body'
wp option delete 'ewtc-email-sending-test'
wp option delete 'ewtc-delete-options'
wp option delete 'ewtc-company-name'
wp option delete 'ewtc-email-sending-smtp'
wp option delete 'ewtc-email-sending-server'
wp option delete 'ewtc-email-sending-postmail'
wp option delete 'ewtc-email-sending-username'
wp option delete 'ewtc-email-sending-password'
wp option delete 'ewtc-email-sending-port'
wp option delete 'ewtc-email-sending-secure'
wp option delete 'woocommerce_version'
wp option delete 'ewtc-num-orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_courier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_courier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_courier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_courier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_tracking_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_tracking_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_tracking_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_tracking_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_email_sending_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_email_sending_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_email_sending_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_email_sending_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_email_sent_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_email_sent_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_email_sent_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_email_sent_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewtc_email_sent_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewtc_email_sent_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewtc_email_sent_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewtc_email_sent_date'"
