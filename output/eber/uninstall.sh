#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adjust_point_when'
wp option delete 'eber_hash_key'
wp option delete 'eber_api_key'
wp option delete 'eber_store_id'
wp option delete 'eber_business_name'
wp option delete 'eber_business_slug'
wp option delete 'eber_status'
wp option delete 'eber_sync_non_member'
wp option delete 'eber_custom_link'
wp option delete 'eber_custom_login_url'
wp option delete 'eber_custom_signup_url'
wp option delete 'eber_welcome_email'
wp option delete 'exclude_tax'
wp option delete 'exclude_shipping'
wp option delete 'exclude_coupon'
wp option delete 'widget_new'
wp option delete 'instant_sync'
wp option delete 'eber_custom_field'
wp option delete 'issue_point_when'
wp option delete 'eber_business_id'
wp option delete 'eber_api_enable'
wp option delete 'eber_custom_field_data'
wp option delete 'eber_sync'
wp option delete 'eber_default_phone_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from_api'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eber_default_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eber_default_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eber_default_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eber_default_user'"
