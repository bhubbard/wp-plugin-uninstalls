#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gk_resolvescreen'
wp option delete 'gk_loginexternal'
wp option delete 'gk_agentid'
wp option delete 'gk_key'
wp option delete 'gk_iv'
wp option delete 'gk_orgid'
wp option delete 'gk_authgroupid'
wp option delete 'gk_service'
wp option delete 'gk_dnsreverse'
wp option delete 'gk_notify_users'
wp option delete 'gk_apiurl'
wp option delete 'gk_verifyssl'
wp option delete 'gk_mailsubject'
wp option delete 'gk_mailhtml'
wp option delete 'gk_tinc'
wp option delete 'gktinc_api_key'
wp option delete 'gktinc_protectiongroup_hashid'
wp option delete 'gktinc_default_challenge_level'
wp option delete 'gktinc_level'
wp option delete 'gktinc_pre_check'
wp option delete 'gktinc_pre_enforce_block'
wp option delete 'gk_debug'
wp option delete 'dnsreverse'

# Clear Cron Jobs
wp cron event delete 'gk_unlock'
wp cron event delete 'clear_blocked_ips_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
