#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slcp_auto_open'
wp option delete 'slcp_phone'
wp option delete 'slcp_agent'
wp option delete 'slcp_avatar'
wp option delete 'slcp_color'
wp option delete 'slcp_agents_list'

