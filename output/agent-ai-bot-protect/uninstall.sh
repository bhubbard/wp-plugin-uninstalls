#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agent_ai_bot_protect_db_version'
wp option delete 'agent_ai_bot_protect_robots_txt'
wp option delete 'agent_ai_bot_protect_blocking_enabled'
wp option delete 'agent_ai_bot_protect_robots_txt_url'

