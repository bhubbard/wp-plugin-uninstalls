#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_job_results'"
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'alpha_sms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_phone'"
