#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsec_max_attempts'
wp option delete 'lsec_lockout_duration'
wp option delete 'lsec_bot_token'
wp option delete 'lsec_chat_id'
wp option delete 'lsec_notify_roles'
wp option delete 'lsec_enable_geolocation'
wp option delete 'lsec_notify_on_failed_attempt'
wp option delete 'lsec_notify_admin_on_lockout'
wp option delete 'lsec_manual_blacklist_ips'
wp option delete 'lsec_manual_whitelist_ips'
wp option delete 'lsec_custom_admin_url'
wp option delete 'lsec_notify_new_device_login'
wp option delete 'lsec_db_version'
wp option delete 'lsec_max_devices_per_user'
wp option delete 'lsec_access_denied_message'
wp option delete 'lsec_enable_content_restriction'

