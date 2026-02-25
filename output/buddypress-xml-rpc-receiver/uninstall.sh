#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_xmlrpc_cap_low'
wp option delete 'bp_xmlrpc_enabled'
wp option delete 'bp_xmlrpc_enabled_calls'
wp option delete 'bp_xmlrpc_more_info'
wp option delete 'bp_xmlrpc_require_approval'
wp option delete 'bp_xmlrpc_allowed_users'
wp option delete 'limit_login_lockouts'
wp option delete 'limit_login_retries'
wp option delete 'limit_login_retries_valid'
wp option delete 'limit_login_lockouts_total'
wp option delete 'limit_login_logged'
wp option delete 'limit_login_client_type'
wp option delete 'limit_login_allowed_retries'
wp option delete 'limit_login_lockout_duration'
wp option delete 'limit_login_allowed_lockouts'
wp option delete 'limit_login_long_duration'
wp option delete 'limit_login_valid_duration'
wp option delete 'limit_login_lockout_notify'
wp option delete 'limit_login_notify_email_after'
wp option delete 'limit_login_cookies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_xmlrpc_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_xmlrpc_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_xmlrpc_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_xmlrpc_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_xmlrpc_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_xmlrpc_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_xmlrpc_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_xmlrpc_disabled'"
