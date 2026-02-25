#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_post_checkout_registration'
wp option delete 'wc_pcr_auto_linking'
wp option delete 'wc_pcr_quick_form'
wp option delete 'wc_pcr_existing_account_msg'
wp option delete 'wc_pcr_new_account_msg'
wp option delete 'woocommerce_registration_generate_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paying_customer'"
