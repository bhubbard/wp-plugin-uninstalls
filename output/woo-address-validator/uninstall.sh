#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcav-invalid-key'
wp option delete 'wcav'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcav_shipping_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcav_shipping_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcav_shipping_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcav_shipping_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcav_billing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcav_billing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcav_billing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcav_billing_status'"
