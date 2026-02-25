#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiar_light_api_key'
wp option delete 'aiar_light_disable_ai'
wp option delete 'aiar_light_business_description'
wp option delete 'aiar_light_selected_form'
wp option delete 'aiar_light_conversation_logs'

