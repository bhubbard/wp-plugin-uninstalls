#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'neexa-ai-active-options'
wp option delete 'neexa_ai_access_token'
wp option delete 'do_neexa_ai_activation'
wp option delete 'neexa-ai-options'
wp option delete 'neexa_ai_agents_configs'

