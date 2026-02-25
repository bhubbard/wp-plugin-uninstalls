#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_slimcd_payment_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slimcd_sessionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slimcd_sessionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slimcd_sessionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slimcd_sessionid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slimcd_postback_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slimcd_postback_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slimcd_postback_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slimcd_postback_done'"
