#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartstack_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
