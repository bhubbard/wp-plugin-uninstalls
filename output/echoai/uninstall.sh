#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'echoai_assistant_image'
wp option delete 'echoai_post_types'
wp option delete 'echoai_floating_button'
wp option delete 'echoai_wp_api_key'
wp option delete 'echoai_chat_instructions'
wp option delete 'echoai_tooltip_text'
wp option delete 'echoai_greeting_message'
wp option delete 'echoai_assistant_id'
wp option delete 'echoai_debug_info'
wp option delete 'echoai_last_api_request'
wp option delete 'echoai_last_api_response'
wp option delete 'echoai_integration_errors'

# Delete Transients
wp transient delete 'echoai_pending_assistant_id'

