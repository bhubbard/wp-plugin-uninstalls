#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starpay_giveaway_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starpay_giveaway_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starpay_giveaway_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starpay_giveaway_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starpay_tax_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starpay_tax_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starpay_tax_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starpay_tax_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starpay_locked_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starpay_locked_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starpay_locked_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starpay_locked_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starpayOrderId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starpayOrderId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starpayOrderId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starpayOrderId'"
