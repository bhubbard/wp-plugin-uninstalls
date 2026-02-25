#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobsms_customer_key'
wp option delete 'mobsms_phone_meta_key'
wp option delete 'mobsms_api_key'
wp option delete 'mobsms_verify_customer'
wp option delete 'mobsms_email'
wp option delete 'mobsms_customer_token'
wp option delete 'mobsms_admin_phone'
wp option delete 'mobsms_app_secret'
wp option delete 'mobsms_activated_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_nicename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_nicename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_nicename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_nicename'"
