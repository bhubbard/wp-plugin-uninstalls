#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_optimizer_api_key'
wp option delete 'ai_optimizer_endpoint'
wp option delete 'ai_optimizer_model'
wp option delete 'ai_optimizer_temperature'
wp option delete 'ai_optimizer_max_tokens'
wp option delete 'ai_optimizer_system_message'
wp option delete 'ai_optimizer_user_message'

