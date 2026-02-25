#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_auth_plugin_admin_enable'
wp option delete 'basic_auth_plugin_enable'
wp option delete 'basic_auth_plugin_username'
wp option delete 'basic_auth_plugin_password'
wp option delete 'basic_auth_plugin_whitelist'
wp option delete 'basic_auth_plugin_urlwhitelist'
wp option delete 'basic_auth_plugin_alert_enable'
wp option delete 'basic_auth_plugin_alertemail'
wp option delete 'basic_auth_plugin_admin_log_enable'
wp option delete 'basic_auth_plugin_remove_data_after_uninstall'
wp option delete 'basic_auth_failure_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_basic_authentication_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_basic_authentication_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_basic_authentication_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_basic_authentication_notice_dismissed'"
