#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'holoultek_ai_content_generator_provider'
wp option delete 'holoultek_ai_content_generator_api_key'
wp option delete 'holoultek_ai_content_generator_system_message'
wp option delete 'holoultek_ai_content_generator_maximum_length'

