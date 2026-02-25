#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dfrapi_account'
wp option delete 'dfrapi_networks'
wp option delete 'dfrapi_merchants'
wp option delete 'dfrapi_configuration'
wp option delete 'dfrapi_transient_whitelist'
wp option delete 'dfrapi_product_networks'
wp option delete 'dfrapi_coupon_networks'
wp option delete 'dfrapi_version'
wp option delete 'dfrapi_usage_notification_tracker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_owner_datafeedr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_owner_datafeedr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_owner_datafeedr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_owner_datafeedr'"
