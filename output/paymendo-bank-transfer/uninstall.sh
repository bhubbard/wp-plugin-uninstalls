#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paymendo_bank_transfer_admin_sms_message'
wp option delete 'paymendo_bank_transfer_admin_sms_enabled'
wp option delete 'paymendo_bank_transfer_admin_email_enabled'
wp option delete 'paymendo_bank_transfer_admin_sms_number'
wp option delete 'paymendo_bank_transfer_customer_sms_message'
wp option delete 'paymendo_bank_transfer_customer_sms_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paymendo_bank_transfer_bank_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paymendo_bank_transfer_bank_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paymendo_bank_transfer_bank_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paymendo_bank_transfer_bank_id'"
