#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EVENT_AGENT_CONFIG_KEY'
wp option delete 'EVENT_AGENT_ADMIN_KEY'
wp option delete 'EVENT_AGENT_PUBLIC_KEY'
wp option delete 'EVENT_AGENT_URL'
wp option delete 'Event_Agent_Url'

