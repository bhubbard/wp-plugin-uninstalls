#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcaddress_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trs_default_shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trs_default_shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trs_default_shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trs_default_shipping_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trs_shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trs_shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trs_shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trs_shipping_address'"
