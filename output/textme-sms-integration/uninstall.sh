#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'textme_sms_account'
wp option delete 'textme_sms_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
