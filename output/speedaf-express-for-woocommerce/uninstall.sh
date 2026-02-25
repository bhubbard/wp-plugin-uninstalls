#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spf_speedaf_enable'
wp option delete 'spf_speedaf_api_key'
wp option delete 'spf_speedaf_name'
wp option delete 'spf_speedaf_phone'
wp option delete 'spf_speedaf_email'
wp option delete 'spf_speedaf_order_prefix'
wp option delete 'woocommerce_default_country'
wp option delete 'spf_speedaf_allow_opened'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
