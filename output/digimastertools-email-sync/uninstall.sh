#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmwkti_username'
wp option delete 'dmwkti_password'
wp option delete 'dmwkti_tag_category'
wp option delete 'dmwkti_tag_product_name'
wp option delete 'dmwkti_global_tag'
wp option delete 'dmwkti_product'
wp option delete 'dmwkti_product_free'
wp option delete 'dm_email_sync_global_product_meta'
wp option delete 'dmwkti_checkbox_checkout_tag'
wp option delete 'dmwkti_optin'
wp option delete 'dmwkti_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dmwkti_global_tag_%'"
wp option delete 'dmwkti_checkbox_checkout'
wp option delete 'dmwkti_checkbox_checkout_title'
wp option delete 'dmwkti_checkbox_checkout_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dmwkti_product_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dmwkti_product_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dmwkti_product_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dmwkti_product_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dm_email_sync_product_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dm_email_sync_product_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dm_email_sync_product_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dm_email_sync_product_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dm_email_sync_coupon_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dm_email_sync_coupon_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dm_email_sync_coupon_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dm_email_sync_coupon_tag'"
