#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%compare_page'"
wp option delete 'udp_agent_allow_tracking'
wp option delete 'udp_agent_tracking_msg_last_shown_at'
wp option delete 'udp_installed_agents'
wp option delete 'udp_active_agent_basename'

# Clear Cron Jobs
wp cron event delete 'cc_udp_agent_send_data'
wp cron event delete 'udp_agent_cron'

