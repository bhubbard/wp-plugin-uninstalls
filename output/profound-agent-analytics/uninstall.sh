#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agent_analytics_settings'
wp option delete 'agent_analytics_site_id'
wp option delete 'agent_analytics_db_version'
wp option delete 'agent_analytics_install_time'
wp option delete 'agent_analytics_remove_data_on_uninstall'
wp option delete 'agent_analytics_preserve_data_on_uninstall'
wp option delete 'agent_analytics_network_settings'

# Delete Transients
wp transient delete 'agent_analytics_sending_lock'
wp transient delete 'agent_analytics_circuit_breaker'
wp transient delete 'agent_analytics_last_send'
wp transient delete 'agent_analytics_last_error'

# Clear Cron Jobs
wp cron event delete 'agent_analytics_send_logs'
wp cron event delete 'agent_analytics_cleanup_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_analytics_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_analytics_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_analytics_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_analytics_dismissed_notice'"
