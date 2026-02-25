#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kt_woomail'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_registration_generate_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
