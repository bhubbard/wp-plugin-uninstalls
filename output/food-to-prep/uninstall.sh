#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp_prep_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'normal_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'normal_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'normal_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'normal_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit'"
