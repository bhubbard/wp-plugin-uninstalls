#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udp_agent_allow_tracking'
wp option delete 'udp_agent_tracking_msg_last_shown_at'
wp option delete 'udp_installed_agents'
wp option delete 'udp_active_agent_basename'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'

# Clear Cron Jobs
wp cron event delete 'cc_udp_agent_send_data'
wp cron event delete 'udp_agent_cron'

