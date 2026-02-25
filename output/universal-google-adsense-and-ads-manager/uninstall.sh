#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udp_agent_allow_tracking'
wp option delete 'udp_agent_tracking_msg_last_shown_at'
wp option delete 'udp_installed_agents'
wp option delete 'udp_active_agent_basename'

# Clear Cron Jobs
wp cron event delete 'cc_udp_agent_send_data'
wp cron event delete 'udp_agent_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ugaam-disable-ad-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ugaam-disable-ad-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ugaam-disable-ad-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ugaam-disable-ad-content'"
