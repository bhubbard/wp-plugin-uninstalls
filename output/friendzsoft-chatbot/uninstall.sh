#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'friendzsoft_chatbot_header_color'
wp option delete 'friendzsoft_openai_api_url'
wp option delete 'friendzsoft_openai_api_key'
wp option delete 'friendzsoft_chatbot_logo'
wp option delete 'friendzsoft_chatbot_primary_color'
wp option delete 'friendzsoft_chatbot_title'
wp option delete 'friendzsoft_openai_instruction'

