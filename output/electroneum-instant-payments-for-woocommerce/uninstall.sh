#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payment_post_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_ips_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_ips_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_ips_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_ips_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_ips_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_ips_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_ips_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_ips_amount'"
