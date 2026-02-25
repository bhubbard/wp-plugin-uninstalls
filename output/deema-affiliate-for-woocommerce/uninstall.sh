#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advertiser_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deema_affiliate_commission_group_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deema_affiliate_commission_group_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deema_affiliate_commission_group_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deema_affiliate_commission_group_key'"
