#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osn_twilio_sid'
wp option delete 'osn_twilio_token'
wp option delete 'osn_plivo_auth'
wp option delete 'osn_plivo_token'
wp option delete 'osn_plivo_number'
wp option delete 'osn_twilio_number'
wp option delete 'active_sitewide_plugins'
wp option delete 'osn_admin_notification_status'
wp option delete 'osn_customer_notification_status'
wp option delete 'osn_admin_notification_text'
wp option delete 'osn_service'
wp option delete 'osn_admin_phone'
wp option delete 'osn_customer_notification_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
